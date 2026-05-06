import { useState, useEffect, useLayoutEffect, useRef } from "react";
import {
  Send,
  Minus,
  MessageCircle,
  Plus,
  X,
  Lock,
  Users,
  AlertCircle,
} from "lucide-react";
import { Button } from "../primitives/Button";
import { useChatStore } from "../../store/chatStore";
import { useAuthStore } from "../../store/authStore";
import { useNotificationStore } from "../../store/notificationStore";
import { getFriends, getChatChannelMessages } from "../../services/APIFRONT/api";
import { wsService } from "../../services/wsService";

export default function Chat() {
  // ── Store ─────────────────────────────────────────────────────────────────
  const {
    isOpen,
    open,
    reduce,
    rooms,
    activeRoomId,
    messages,
    memberNames,
    memberStatus,
    friendOnlineStatus,
    activeUsers,
    unreadByRoom,
    wsError,
    switchRoom,
    leaveRoom,
    addRoom,
  } = useChatStore();

  const user = useAuthStore((s) => s.user);

  // ── État local (UI uniquement) ─────────────────────────────────────────────
  const [input, setInput] = useState("");
  const [tick, setTick] = useState(0); // force réévaluation des statuts toutes les 30s
  const [hasMoreByRoom, setHasMoreByRoom] = useState({});
  const [loadingMore, setLoadingMore] = useState(false);
  const [showCreate, setShowCreate] = useState(false);
  const [createSearch, setCreateSearch] = useState("");
  const [allUsers, setAllUsers] = useState([]);
  const [createMembers, setCreateMembers] = useState([]); // [{ ID, Username }] — max 1
  // Index du premier message non lu au moment de l'ouverture de la room
  const [openedUnreadIdx, setOpenedUnreadIdx] = useState(null);

  // ── Refs UI ───────────────────────────────────────────────────────────────
  const panelRef = useRef(null);
  const scrollRef = useRef(null);
  const bottomRef = useRef(null);
  const scrollRestoreRef = useRef(null);
  const unreadSeparatorRef = useRef(null);

  // ── Données de la room active ─────────────────────────────────────────────
  const activeRoom = rooms.find((r) => r.room_id === activeRoomId) ?? null;
  const currentMsgs = messages[activeRoomId] ?? [];

  const GENERAL_CHANNEL_ID = 0;

  // "Général" ou username de l'autre personne dans un DM
  function getRoomName(room) {
    if (room.room_id === GENERAL_CHANNEL_ID) return "Général";
    const otherId = room.member_ids.find((id) => id !== user?.ID);
    return otherId ? (memberNames[otherId] ?? `#${otherId}`) : "DM";
  }

  // Un DM est tout ce qui n'est pas le salon général
  function isRoomDm(room) {
    return room.room_id !== GENERAL_CHANNEL_ID;
  }

  // Statut en ligne de l'autre personne dans un DM
  // Priorité : user_status WS (backend) > activeUsers (message reçu dans les 2 min)
  const ONLINE_THRESHOLD_MS = 2 * 60 * 1000;
  function getDmStatus(room) {
    if (!isRoomDm(room)) return false;
    const otherId = room.member_ids.find((id) => id !== user?.ID);
    if (!otherId) return false;
    // Priorité : friend.status WS > user_status WS > activeUsers (timestamp)
    if (friendOnlineStatus[otherId] !== undefined) return friendOnlineStatus[otherId];
    const wsStatus = memberStatus[room.room_id]?.[otherId];
    if (wsStatus !== undefined) return wsStatus;
    const lastSeen = activeUsers[otherId];
    return typeof lastSeen === "number" && Date.now() - lastSeen < ONLINE_THRESHOLD_MS;
  }

  // Interval pour réévaluer les statuts basés sur timestamp
  useEffect(() => {
    const id = setInterval(() => setTick((t) => t + 1), 30_000);
    return () => clearInterval(id);
  }, []);

  // ── Auto-scroll ───────────────────────────────────────────────────────────
  // Scroll vers le séparateur non-lus (si présent) ou vers le bas
  useEffect(() => {
    requestAnimationFrame(() => {
      if (openedUnreadIdx !== null && unreadSeparatorRef.current) {
        unreadSeparatorRef.current.scrollIntoView({ behavior: "instant", block: "center" });
      } else {
        bottomRef.current?.scrollIntoView({ behavior: "instant" });
      }
    });
  }, [isOpen, activeRoomId]); // openedUnreadIdx est mis à jour en même temps que activeRoomId (batching React 18)

  // Restaurer la position du scroll après un prepend de messages anciens
  useLayoutEffect(() => {
    if (!scrollRestoreRef.current || !scrollRef.current) return;
    const { scrollHeight: prevHeight, scrollTop: prevTop } = scrollRestoreRef.current;
    scrollRef.current.scrollTop = scrollRef.current.scrollHeight - prevHeight + prevTop;
  });

  // Nouveau message : scroll si chat ouvert sur cette room, sinon seulement si déjà en bas
  useEffect(() => {
    const c = scrollRef.current;
    if (!c) return;
    if (scrollRestoreRef.current) {
      scrollRestoreRef.current = null;
      return;
    }
    const atBottom = c.scrollHeight - c.scrollTop - c.clientHeight < 60;
    if (isOpen || atBottom)
      bottomRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [messages]);

  // Fetch les noms manquants pour les messages affichés
  useEffect(() => {
    const msgs = messages[activeRoomId] ?? [];
    msgs.forEach((msg) => {
      if (msg.sender_id && !memberNames[msg.sender_id]) {
        wsService.getUserName(msg.sender_id);
      }
    });
  }, [activeRoomId, messages, memberNames]);

  // Effacer les notifications MP quand on ouvre la room concernée
  useEffect(() => {
    if (activeRoomId === null || !isOpen) return;
    useNotificationStore.getState().removeMessageNotifs(activeRoomId);
  }, [activeRoomId, isOpen]);

  // Marquer lu dès qu'un nouveau message arrive dans la room active et visible
  useEffect(() => {
    if (!isOpen || activeRoomId === null) return;
    const lastMsg = currentMsgs[currentMsgs.length - 1];
    if (!lastMsg?.message_id) return;
    const channelId = wsService.getChannelId(activeRoomId);
    wsService.send({ type: "chat.read", payload: { channel_id: channelId, last_read_message_id: lastMsg.message_id } });
  }, [currentMsgs]);

  // Quand l'utilisateur ouvre le chat (isOpen → true) sur une room déjà chargée,
  // capturer l'index des non-lus, envoyer chat.read et effacer le marqueur
  useEffect(() => {
    if (!isOpen || activeRoomId === null) return;
    // Capturer AVANT d'effacer pour que le séparateur reste visible
    const idx = useChatStore.getState().unreadByRoom[activeRoomId] ?? null;
    setOpenedUnreadIdx(idx);

    const msgs = useChatStore.getState().messages[activeRoomId] ?? [];
    if (msgs.length === 0) return;
    const lastId = msgs[msgs.length - 1]?.message_id;
    if (!lastId) return;
    const channelId = wsService.getChannelId(activeRoomId);
    wsService.send({ type: "chat.read", payload: { channel_id: channelId, last_read_message_id: lastId } });
    useChatStore.setState((s) => {
      const u = { ...s.unreadByRoom };
      delete u[activeRoomId];
      return { unreadByRoom: u };
    });

    // Scroll (activeRoomId n'a pas changé ici, donc l'effet scroll ne se relance pas)
    requestAnimationFrame(() => {
      if (idx !== null && unreadSeparatorRef.current) {
        unreadSeparatorRef.current.scrollIntoView({ behavior: "instant", block: "center" });
      } else {
        bottomRef.current?.scrollIntoView({ behavior: "instant" });
      }
    });
  }, [isOpen]);

  // Chargement de l'historique REST + envoi de chat.read au changement de room
  useEffect(() => {
    if (activeRoomId === null) return;
    if (!useAuthStore.getState().isAuthenticated) return;

    const existing = useChatStore.getState().messages[activeRoomId];
    if (existing && existing.length > 0) {
      // Historique déjà préchargé par wsService — envoyer seulement chat.read si visible
      if (isOpen) {
        const lastId = existing[existing.length - 1]?.message_id;
        if (lastId != null) {
          const channelId = wsService.getChannelId(activeRoomId);
          wsService.send({ type: "chat.read", payload: { channel_id: channelId, last_read_message_id: lastId } });
          useChatStore.setState((s) => {
            const u = { ...s.unreadByRoom };
            delete u[activeRoomId];
            return { unreadByRoom: u };
          });
        }
      }
      return;
    }

    const channelId = wsService.getChannelId(activeRoomId);
    setHasMoreByRoom((prev) => ({ ...prev, [activeRoomId]: false }));
    getChatChannelMessages(channelId)
      .then(({ messages: msgs, last_read_message_id }) => {
        const mapped = (msgs ?? []).map((m) => ({
          message_id:  m.id,
          sender_id:   m.sender_id,
          sender_name: null,
          content:     m.content,
          created_at:  m.created_at,
        })).reverse();

        useChatStore.getState().setRoomMessages(activeRoomId, mapped);
        setHasMoreByRoom((prev) => ({ ...prev, [activeRoomId]: (msgs ?? []).length >= 10 }));

        // Calculer les non-lus pour afficher le séparateur
        if (mapped.length > 0 && last_read_message_id != null) {
          const myId = useAuthStore.getState().user?.ID;
          const firstUnread = mapped.findIndex((m) => m.message_id > last_read_message_id && m.sender_id !== myId);
          if (firstUnread > 0 && !isOpen) {
            useChatStore.setState((s) => ({
              unreadByRoom: { ...s.unreadByRoom, [activeRoomId]: firstUnread },
              hasUnread: true,
            }));
          }
        }

        // Envoyer chat.read uniquement si l'utilisateur voit le chat
        if (isOpen) {
          const lastId = mapped[mapped.length - 1]?.message_id ?? last_read_message_id;
          if (lastId != null) {
            wsService.send({ type: "chat.read", payload: { channel_id: channelId, last_read_message_id: lastId } });
            useChatStore.setState((s) => {
              const u = { ...s.unreadByRoom };
              delete u[activeRoomId];
              return { unreadByRoom: u };
            });
          }
        }
      })
      .catch((err) => {
        if (err?.status !== 403) console.error("[Chat] loadHistory error:", err);
      });
  }, [activeRoomId]);

  // Fermer le panneau en cliquant à l'extérieur
  useEffect(() => {
    if (!isOpen) return;
    const fn = (e) => {
      if (panelRef.current && !panelRef.current.contains(e.target)) reduce();
    };
    document.addEventListener("mousedown", fn);
    return () => document.removeEventListener("mousedown", fn);
  }, [isOpen]);

  // ── Envoi d'un message ────────────────────────────────────────────────────
  function send() {
    if (!input.trim() || activeRoomId === null || !activeRoom) return;
    const content = input.trim();

    if (isRoomDm(activeRoom)) {
      // DM : room_id = other_user_id (convention frontend), ReceiverID pour le WS
      // Pour les DMs chargés depuis REST, member_ids = [otherUserId]
      // Pour les DMs créés depuis UI, activeRoomId est déjà l'otherUserId
      const receiverId = activeRoom.member_ids.find((id) => id !== user?.ID) ?? activeRoomId;
      useChatStore.getState().receiveMessage({
        message_id: null,
        room_id: activeRoomId,
        sender_id: user?.ID,
        sender_name: user?.Username,
        content,
        created_at: new Date().toISOString(),
      });
      wsService.sendMp(receiverId, content);
    } else {
      // Général : affichage optimiste (le backend broadcast saute l'expéditeur)
      useChatStore.getState().receiveMessage({
        message_id: null,
        room_id: GENERAL_CHANNEL_ID,
        sender_id: user?.ID,
        sender_name: user?.Username,
        content,
        created_at: new Date().toISOString(),
      });
      wsService.send({
        type: "chat.send.general",
        payload: { content },
      });
    }
    setInput("");
  }

  function loadOlderMessages() {
    if (activeRoomId === null || loadingMore) return;
    const roomId = activeRoomId;
    const channelId = wsService.getChannelId(roomId);
    const oldest = currentMsgs[0];
    if (!oldest) return;
    if (!useAuthStore.getState().isAuthenticated) return;

    setLoadingMore(true);
    getChatChannelMessages(channelId, oldest.message_id)
      .then(({ messages: msgs }) => {
        const mapped = (msgs ?? []).map((m) => ({
          message_id:  m.id,
          sender_id:   m.sender_id,
          sender_name: null,
          content:     m.content,
          created_at:  m.created_at,
        })).reverse();

        if (scrollRef.current) {
          scrollRestoreRef.current = {
            scrollHeight: scrollRef.current.scrollHeight,
            scrollTop: scrollRef.current.scrollTop,
          };
        }
        useChatStore.getState().setRoomMessages(
          roomId,
          [...mapped, ...useChatStore.getState().messages[roomId]],
        );
        setHasMoreByRoom((prev) => ({
          ...prev,
          [roomId]: (msgs ?? []).length >= 10,
        }));
      })
      .catch((err) => { if (err?.status !== 403) console.error("[Chat] loadOlder error:", err); })
      .finally(() => setLoadingMore(false));
  }

  // ── Créer un DM (exactement 1 membre, pas de titre) ───────────────────────
  function handleCreateRoom(e) {
    e.preventDefault();
    if (createMembers.length !== 1) return;
    const other = createMembers[0];
    // Création locale : room_id = user ID de l'autre personne
    // Le backend crée le channel automatiquement au premier message (chat.send.mp)
    addRoom({
      room_id: other.ID,
      title: null,
      member_ids: [user?.ID, other.ID],
    });
    useChatStore.setState((state) => ({
      memberNames: { ...state.memberNames, [other.ID]: other.Username },
    }));
    handleSwitchRoom(other.ID);
    setShowCreate(false);
    setCreateSearch("");
    setAllUsers([]);
    setCreateMembers([]);
  }

  // ── Changer de room : capture l'index non-lu avant que switchRoom l'efface ──
  function handleSwitchRoom(roomId) {
    const idx = useChatStore.getState().unreadByRoom[roomId] ?? null;
    setOpenedUnreadIdx(idx);
    switchRoom(roomId); // efface unreadByRoom[roomId] dans le store
  }

  // ── Quitter une room ──────────────────────────────────────────────────────
  function handleLeaveRoom(roomId) {
    wsService.send({ type: "leave_room", payload: { room_id: roomId } });
    leaveRoom(roomId);
  }

  // ── Chargement des amis à l'ouverture du formulaire DM ────────────────────
  useEffect(() => {
    if (!showCreate) return;
    if (!useAuthStore.getState().isAuthenticated) return;
    getFriends("granted")
      .then((friends) => setAllUsers(friends.filter((f) => f.ID !== user?.ID)))
      .catch(() => setAllUsers([]));
  }, [showCreate]);

  // ── Filtrage local par createSearch ──────────────────────────────────────
  const createResults = allUsers.filter(
    (u) =>
      !createMembers.find((m) => m.ID === u.ID) &&
      u.Username.toLowerCase().includes(createSearch.toLowerCase()),
  );

  // ─────────────────────────────────────────────────────────────────────────
  // Pastille réduite
  // ─────────────────────────────────────────────────────────────────────────
  if (!isOpen) {
    const totalUnread = Object.entries(unreadByRoom).reduce((acc, [roomId, fromIdx]) => {
      const count = (messages[roomId]?.length ?? 0) - fromIdx;
      return acc + (count > 0 ? count : 0);
    }, 0);

    return (
      <button
        onClick={open}
        title="Ouvrir le chat"
        aria-label="Ouvrir le chat"
        className="relative h-14 w-14 rounded-full border border-creamW bg-blackW flex items-center justify-center shadow-xl hover:scale-110 transition-transform"
      >
        <MessageCircle size={26} className="text-whiteW" />
        {totalUnread > 0 && (
          <span className="absolute -top-1 -right-1 flex h-5 min-w-5 items-center justify-center rounded-full bg-redW px-1 text-xs font-bold text-white">
            {totalUnread > 99 ? "99+" : totalUnread}
          </span>
        )}
      </button>
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Panneau : non connecté
  // ─────────────────────────────────────────────────────────────────────────
  if (!user) {
    return (
      <div
        ref={panelRef}
        className="flex flex-col w-[280px] rounded-2xl bg-blackW border border-creamW shadow-xl overflow-hidden"
      >
        <div className="flex items-center justify-between px-3 py-2 border-b border-whiteW_20">
          <span className="text-sm font-semibold text-whiteW">Chat</span>
          <Button variant="crossMinus" title="Réduire le chat" aria-label="Réduire le chat" onClick={reduce}>
            <Minus size={16} />
          </Button>
        </div>
        <div className="flex flex-col items-center justify-center gap-2 p-6 text-center">
          <Lock size={20} className="text-whiteW_50" />
          <p className="text-xs text-whiteW_50">
            Connectez-vous pour accéder au chat
          </p>
        </div>
      </div>
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Panneau complet : sidebar rooms + zone messages
  // ─────────────────────────────────────────────────────────────────────────
  return (
    <div
      ref={panelRef}
      className="flex w-[420px] h-[480px] rounded-2xl bg-blackW border border-creamW shadow-xl overflow-hidden"
    >
      {/* ── Sidebar : liste des rooms ──────────────────────────────────────── */}
      <nav className="w-[120px] shrink-0 flex flex-col border-r border-whiteW_20 bg-blackSBW overflow-y-auto">
        <div className="flex items-center gap-1 px-2 py-2">
          <span className="flex-1 text-[10px] uppercase tracking-wider text-whiteW_50 font-semibold">
            Discussions
          </span>
          <button
            onClick={() => setShowCreate((v) => !v)}
            className="p-1 text-whiteW_50 hover:text-whiteW transition-colors"
            title="Nouveau message privé"
            aria-label="Nouveau message privé"
          >
            <Plus size={13} />
          </button>
        </div>

        {/* Formulaire nouveau DM ──────────────────────────────────────────── */}
        {showCreate && (
          <form
            onSubmit={handleCreateRoom}
            className="px-2 pb-2 space-y-1.5 border-b border-whiteW_20"
          >
            <div className="relative">
              <input
                autoFocus
                value={createSearch}
                onChange={(e) => setCreateSearch(e.target.value)}
                placeholder="Rechercher…"
                className="w-full px-1.5 py-1 text-[10px] rounded bg-blackW border border-whiteW_20 text-whiteW placeholder:text-whiteW_50 focus:outline-none focus:border-redW"
              />
              {createResults.length > 0 && (
                <div className="absolute top-full left-0 right-0 bg-blackW border border-whiteW_20 rounded-b z-10 max-h-[80px] overflow-y-auto">
                  {createResults.map((u) => (
                    <button
                      key={u.ID}
                      type="button"
                      onClick={() => {
                        addRoom({ room_id: u.ID, title: null, member_ids: [user?.ID, u.ID] });
                        useChatStore.setState((s) => ({
                          memberNames: { ...s.memberNames, [u.ID]: u.Username },
                        }));
                        handleSwitchRoom(u.ID);
                        setShowCreate(false);
                        setCreateSearch("");
                        setAllUsers([]);
                        setCreateMembers([]);
                      }}
                      className="w-full px-2 py-1 text-[10px] text-whiteW_70 hover:bg-whiteW_20 text-left truncate"
                    >
                      {u.Username}
                    </button>
                  ))}
                </div>
              )}
            </div>

            {createMembers.length > 0 && (
              <div className="flex flex-wrap gap-1">
                {createMembers.map((m) => (
                  <span
                    key={m.ID}
                    className="flex items-center gap-0.5 px-1.5 py-0.5 bg-redW rounded-full text-[9px] text-whiteW"
                  >
                    {m.Username}
                    <button type="button" title="Retirer" aria-label="Retirer" onClick={() => setCreateMembers([])}>
                      <X size={9} />
                    </button>
                  </span>
                ))}
              </div>
            )}

            <button
              type="submit"
              disabled={createMembers.length !== 1}
              className="w-full py-1 text-[10px] bg-redW disabled:opacity-40 hover:bg-redWHv text-whiteW rounded transition-colors font-semibold"
            >
              Ouvrir
            </button>
          </form>
        )}

        {/* Liste des rooms ─────────────────────────────────────────────────── */}
        {rooms.length === 0 && !showCreate && (
          <p className="px-2 py-4 text-[10px] text-whiteW_50 text-center leading-relaxed">
            Aucun salon.
            <br />
            Crée-en un avec +
          </p>
        )}

        {rooms.map((room) => (
          <button
            key={room.room_id}
            onClick={() => handleSwitchRoom(room.room_id)}
            className={`flex items-center gap-1.5 px-2 py-1.5 mx-1 my-0.5 text-[11px] rounded-md text-left truncate transition-colors ${
              activeRoomId === room.room_id
                ? "bg-redW text-whiteW"
                : "text-whiteW_50 hover:text-whiteW hover:bg-whiteW_20"
            }`}
          >
            <div className="relative shrink-0">
              {isRoomDm(room) ? <Lock size={10} /> : <Users size={10} />}
              {isRoomDm(room) && (
                <span
                  className={`absolute -bottom-0.5 -right-0.5 w-1.5 h-1.5 rounded-full border border-blackSBW ${
                    getDmStatus(room) ? "bg-green-400" : "bg-red-500"
                  }`}
                />
              )}
            </div>
            <span className="truncate flex-1">{getRoomName(room)}</span>
            {unreadByRoom[room.room_id] !== undefined &&
              activeRoomId !== room.room_id && (() => {
                const count = (messages[room.room_id]?.length ?? 0) - unreadByRoom[room.room_id];
                return count > 0 ? (
                  <span className="shrink-0 flex items-center justify-center min-w-[16px] h-4 px-1 rounded-full bg-redW text-[9px] font-bold text-whiteW">
                    {count > 99 ? "99+" : count}
                  </span>
                ) : (
                  <span className="w-1.5 h-1.5 rounded-full bg-redW shrink-0" />
                );
              })()}
          </button>
        ))}
      </nav>

      {/* ── Zone de messages ─────────────────────────────────────────────────── */}
      <div className="flex flex-col flex-1 min-w-0">
        {/* Header */}
        <div className="flex items-center gap-2 px-3 py-2 border-b border-whiteW_20">
          <div className="flex-1 flex items-center gap-1.5 min-w-0">
            {activeRoom ? (
              <>
                {isRoomDm(activeRoom) ? (
                  <Lock size={12} className="text-whiteW shrink-0" />
                ) : (
                  <Users size={12} className="text-whiteW shrink-0" />
                )}
                <span className="text-xs font-semibold text-whiteW truncate">
                  {getRoomName(activeRoom)}
                </span>
                {isRoomDm(activeRoom) && (
                  <span
                    className={`w-2 h-2 rounded-full shrink-0 ${getDmStatus(activeRoom) ? "bg-green-400" : "bg-red-500"}`}
                    title={getDmStatus(activeRoom) ? "En ligne" : "Hors ligne"}
                  />
                )}
              </>
            ) : (
              <span className="text-xs text-whiteW_50">
                Choisissez un salon
              </span>
            )}
          </div>
          {activeRoom && activeRoomId !== GENERAL_CHANNEL_ID && (
            <button
              onClick={() => handleLeaveRoom(activeRoomId)}
              className="text-whiteW_50 hover:text-redW transition-colors shrink-0"
              title="Quitter ce salon"
              aria-label="Quitter ce salon"
            >
              <X size={14} />
            </button>
          )}
          <Button variant="crossMinus" title="Réduire le chat" aria-label="Réduire le chat" onClick={reduce}>
            <Minus size={16} />
          </Button>
        </div>

        {/* Erreur serveur */}
        {wsError && (
          <div className="flex items-center gap-2 px-3 py-2 bg-red-900/40 border-b border-redW text-xs text-redW">
            <AlertCircle size={12} className="shrink-0" />
            <span>{wsError}</span>
          </div>
        )}

        {/* Messages */}
        <div
          ref={scrollRef}
          className="flex-1 overflow-y-auto p-3 space-y-2 text-whiteW"
        >
          {activeRoomId === null && (
            <p className="text-center text-xs text-whiteW_50 mt-10 leading-relaxed">
              Sélectionnez un salon
              <br />
              ou créez-en un nouveau
            </p>
          )}

          {hasMoreByRoom[activeRoomId] && (
            <div className="flex justify-center py-1">
              <button
                onClick={loadOlderMessages}
                disabled={loadingMore}
                className="px-3 py-1 text-[10px] text-whiteW_50 hover:text-whiteW border border-whiteW_20 hover:border-whiteW rounded-full transition-colors disabled:opacity-40"
              >
                {loadingMore ? "Chargement…" : "Messages plus anciens"}
              </button>
            </div>
          )}

          {currentMsgs.map((msg, i) => {
            const isMe = msg.sender_id === user?.ID;
            const isGeneral = activeRoomId === GENERAL_CHANNEL_ID;
            const prevMsg = i > 0 ? currentMsgs[i - 1] : null;
            const isFirstInGroup =
              !prevMsg ||
              prevMsg.sender_id !== msg.sender_id ||
              (openedUnreadIdx !== null && i === openedUnreadIdx);
            const displayName = memberNames[msg.sender_id] ?? msg.sender_name;

            return (
              <div key={msg.message_id ?? i}>
                {/* Séparateur non lus */}
                {openedUnreadIdx !== null && i === openedUnreadIdx && (
                  <div ref={unreadSeparatorRef} className="flex items-center gap-2 my-2">
                    <div className="flex-1 h-px bg-redW" />
                    <span className="text-[10px] text-redW font-semibold whitespace-nowrap">
                      Messages non lus
                    </span>
                    <div className="flex-1 h-px bg-redW" />
                  </div>
                )}

                <div
                  className={`flex flex-col ${isMe ? "items-end" : "items-start"}`}
                >
                  {/* Nom expéditeur — canal général, premier du groupe */}
                  {isGeneral && isFirstInGroup && displayName && (
                    <span className="text-xs text-whiteW_50 mb-0.5 px-1 font-semibold">
                      {displayName}
                    </span>
                  )}

                  {/* Nom expéditeur — DM (comportement existant inchangé) */}
                  {!isGeneral && !isMe && (
                    <span className="text-xs text-whiteW_50 mb-0.5 px-1 font-semibold">
                      {msg.sender_name}
                    </span>
                  )}

                  <div
                    className={`max-w-[80%] px-3 py-1.5 text-xs leading-relaxed break-words ${
                      isMe
                        ? "bg-redW text-whiteW rounded-2xl rounded-tr-sm"
                        : "bg-blackW_60 border border-whiteW_20 text-whiteW rounded-2xl rounded-tl-sm"
                    } ${msg.failed ? "line-through opacity-50" : ""}`}
                    title={msg.failed ? "Message non envoyé" : undefined}
                  >
                    {msg.content}
                  </div>
                  {msg.created_at && (
                    <span className="text-[9px] text-whiteW_50 mt-0.5 px-1">
                      {new Date(msg.created_at).toLocaleTimeString("fr-FR", {
                        hour: "2-digit",
                        minute: "2-digit",
                      })}
                    </span>
                  )}
                </div>
              </div>
            );
          })}
          <div ref={bottomRef} />
        </div>

        {/* Barre d'envoi */}
        {activeRoomId !== null && (
          <div className="flex flex-col border-t text-whiteW border-whiteW_20 p-2 gap-1">
            <div className="flex gap-2">
              <input
                value={input}
                onChange={(e) => setInput(e.target.value.slice(0, 500))}
                onKeyDown={(e) => e.key === "Enter" && send()}
                className="flex-1 bg-transparent text-sm outline-none placeholder:text-whiteW_50"
                placeholder="Message…"
              />
              <Button onClick={send} variant="sendMsg" title="Envoyer" aria-label="Envoyer">
                <Send size={16} />
              </Button>
            </div>
            {input.length > 400 && (
              <span className={`text-[10px] text-right ${input.length >= 500 ? "text-redW" : "text-whiteW_50"}`}>
                {input.length}/500
              </span>
            )}
          </div>
        )}
      </div>
    </div>
  );
}
