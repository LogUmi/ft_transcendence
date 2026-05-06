import { toast } from "sonner";
import {
  getUser,
  getFriends,
  getChatChannels,
  getChatChannelMessages,
} from "./APIFRONT/api";
import { useNotificationStore } from "../store/notificationStore";
import { useChatStore } from "../store/chatStore";
import { useAuthStore } from "../store/authStore";

const pendingNameFetches = {};

async function getUserName(userId) {
  const cached = useChatStore.getState().memberNames[userId];
  if (cached) return cached;
  if (pendingNameFetches[userId]) return pendingNameFetches[userId];
  if (!useAuthStore.getState().isAuthenticated) return `#${userId}`;
  pendingNameFetches[userId] = getUser(userId)
    .then((u) => {
      useChatStore.setState((s) => ({
        memberNames: { ...s.memberNames, [userId]: u.Username },
      }));
      return u.Username;
    })
    .catch(() => `#${userId}`)
    .finally(() => {
      delete pendingNameFetches[userId];
    });
  return pendingNameFetches[userId];
}

function handleMessage(event) {
  let msg;
  try {
    msg = JSON.parse(event.data);
  } catch {
    console.warn("[wsService] message non JSON reçu:", event.data);
    return;
  }

  const { type, payload, success, error } = msg;

  // Réponse ACK d'un message privé envoyé
  if (type === "chat.send.mp") {
    const receiverId = pendingMpReceivers.shift();
    if (success === false) {
      useChatStore.getState().setWsError(error ?? "Erreur envoi MP");
      if (receiverId) useChatStore.getState().markLastMessageFailed(receiverId);
    } else {
      // Stocker le mapping userId → channelId pour les appels REST
      if (receiverId && payload?.room_id) {
        useChatStore.setState((s) => ({
          roomChannelIds: {
            ...s.roomChannelIds,
            [receiverId]: payload.room_id,
          },
        }));
      }
    }
    return;
  }

  // Réponse ACK d'un message général envoyé
  if (type === "chat.send.general") {
    if (success === false) {
      useChatStore.getState().setWsError(error ?? "Erreur envoi général");
      useChatStore.getState().markLastMessageFailed(0);
    }
    return;
  }

  if (type === "notification") {
    useNotificationStore.getState().addNotification(payload);
    return;
  }

  if (type === "chat.message.general") {
    const GENERAL_CHANNEL_ID = 0;
    const state = useChatStore.getState();
    if (payload.sender_name && payload.sender_id) {
      useChatStore.setState((s) => ({
        memberNames: {
          ...s.memberNames,
          [payload.sender_id]: payload.sender_name,
        },
      }));
    }
    state.receiveMessage({
      message_id: payload.message_id,
      room_id: GENERAL_CHANNEL_ID,
      sender_id: payload.sender_id,
      sender_name:
        payload.sender_name ?? state.memberNames[payload.sender_id] ?? null,
      content: payload.content,
      created_at: payload.created_at,
    });
    return;
  }

  // Message privé reçu
  if (type === "chat.receive.mp") {
    const state = useChatStore.getState();
    const senderId = payload.sender_id;
    const channelId = payload.room_id; // vrai channel_id côté DB

    // La room est identifiée par l'userId de l'expéditeur (convention frontend)
    if (!state.rooms.find((r) => r.room_id === senderId)) {
      state.addRoom({ room_id: senderId, title: null, member_ids: [senderId] });
    }
    // Stocker le mapping userId → channelId pour les appels REST
    useChatStore.setState((s) => ({
      roomChannelIds: { ...s.roomChannelIds, [senderId]: channelId },
    }));

    state.receiveMessage({
      message_id: payload.message_id,
      room_id: senderId,
      sender_id: senderId,
      sender_name: state.memberNames[senderId] ?? null,
      content: payload.content,
      created_at: payload.created_at,
    });
    state.setUserActive(senderId);

    // Notification si le chat n'est pas ouvert sur cette room
    const isRoomActive = state.isOpen && state.activeRoomId === senderId;
    if (!isRoomActive) {
      getUserName(senderId).then((name) => {
        useNotificationStore.getState().addNotification({
          id: Date.now(),
          kind: "message",
          message: `${name} : ${payload.content.slice(0, 60)}${payload.content.length > 60 ? "…" : ""}`,
          read: false,
          meta: { room_id: senderId },
        });
      });
    }

    // Fetch le nom de l'expéditeur s'il n'est pas encore en cache
    if (!state.memberNames[senderId]) getUserName(senderId);
    return;
  }

  // Demande d'ami reçue en temps réel
  if (type === "friend.request") {
    getUserName(payload.from_user_id).then((name) => {
      useNotificationStore.getState().addNotification({
        id: `friend_request_${payload.from_user_id}`,
        kind: "friend_request",
        message: `${name} vous a envoyé une demande d'ami`,
        read: false,
        meta: { from_user_id: payload.from_user_id },
      });
    });
    return;
  }

  // Demande acceptée
  if (type === "friend.accepted") {
    getUserName(payload.user_id).then((name) => {
      useNotificationStore.getState().addNotification({
        id: Date.now(),
        kind: "friend_accept",
        message: `${name} a accepté votre demande d'ami`,
        read: false,
      });
    });
    return;
  }

  // Demande refusée
  if (type === "friend.rejected") {
    getUserName(payload.user_id).then((name) => {
      useNotificationStore.getState().addNotification({
        id: Date.now(),
        kind: "friend_rejected",
        message: `${name} a refusé votre demande d'ami`,
        read: false,
      });
    });
    return;
  }

  // Plus amis (rejeté / supprimé)
  if (type === "friend.removed") {
    getUserName(payload.user_id).then((name) => {
      useNotificationStore.getState().addNotification({
        id: Date.now(),
        kind: "friend_removed",
        message: `${name} vous a retiré de ses amis`,
        read: false,
      });
    });
    // Retirer aussi le statut en ligne
    useChatStore.getState().setFriendOnline(payload.user_id, false);
    return;
  }

  // Bloqué
  if (type === "friend.blocked") {
    getUserName(payload.user_id).then((name) => {
      useNotificationStore.getState().addNotification({
        id: Date.now(),
        kind: "friend_blocked",
        message: `${name} vous a bloqué`,
        read: false,
      });
    });
    useChatStore.getState().setFriendOnline(payload.user_id, false);
    return;
  }

  if (type === "friend.online.list") {
    useChatStore
      .getState()
      .setFriendOnlineList(payload.online_friend_ids ?? []);
    return;
  }

  if (type === "friend.status") {
    useChatStore.getState().setFriendOnline(payload.user_id, payload.is_online);
    getUserName(payload.user_id).then((name) => {
      if (payload.is_online) {
        toast.success(`${name} est en ligne`, { duration: 3000 });
      } else {
        toast(`${name} s'est déconnecté`, { duration: 3000 });
      }
    });
    return;
  }

  if (type === "room_created") {
    useChatStore.getState().addRoom(payload);
    return;
  }

  if (type === "user_status") {
    useChatStore.getState().setMemberStatus(payload);
    return;
  }

  if (type === "error") {
    useChatStore
      .getState()
      .setWsError(payload.message ?? payload.code ?? "Erreur inconnue");
    return;
  }

  // Autres types (blindtest, etc.) : ignorer silencieusement pour l'instant
}

function loadPendingFriendRequests() {
  if (!useAuthStore.getState().isAuthenticated) return;
  getFriends("pending")
    .then((pending) => {
      const myId = useAuthStore.getState().user?.ID;
      pending
        .filter((u) => u.CreatedBy !== myId)
        .forEach((u) => {
          useNotificationStore.getState().upsertNotification({
            id: `friend_request_${u.ID}`,
            kind: "friend_request",
            message: `${u.Username} vous a envoyé une demande d'ami`,
            read: false,
            meta: { from_user_id: u.ID },
          });
        });
    })
    .catch(() => {});
}

let socket = null;
let reconnectTimer = null;
let pollTimer = null;
const pendingMpReceivers = []; // FIFO — receiver IDs attendant un ACK

function send(message) {
  if (socket?.readyState === WebSocket.OPEN) {
    socket.send(JSON.stringify(message));
  }
}

function sendMp(receiverId, content) {
  pendingMpReceivers.push(receiverId);
  send({ type: "chat.send.mp", payload: { room_id: receiverId, content } });
}

function connect() {
  if (!useAuthStore.getState().isAuthenticated) return;

  socket = new WebSocket("/ws");

  socket.onopen = async () => {
    clearTimeout(reconnectTimer);
    // Réinitialiser le chat à chaque (re)connexion pour forcer le rechargement de l'historique
    useChatStore.setState({
      rooms: [],
      messages: {},
      activeRoomId: null,
      memberStatus: {},
      unreadByRoom: {},
      hasUnread: false,
      activeUsers: {},
      friendOnlineStatus: {},
      roomChannelIds: {},
    });

    // Charger les canaux via REST et auto-switch vers "général" (ID=1)
    if (useAuthStore.getState().isAuthenticated) {
      // Le canal général est toujours présent (ID=1), on l'ajoute avant l'appel REST
      useChatStore.getState().setPendingGeneral(true);
      useChatStore
        .getState()
        .addRoom({ room_id: 0, title: "general", member_ids: [] });

      try {
        const channels = await getChatChannels();
        const store = useChatStore.getState();

        channels.forEach((ch) => {
          if (ch.is_general) {
            // Canal général : room_id = 0 (sentinel frontend), channel_id réel stocké dans roomChannelIds
            store.addRoom({ room_id: 0, title: "general", member_ids: [] });
            useChatStore.setState((s) => ({
              roomChannelIds: { ...s.roomChannelIds, [0]: ch.channel_id },
            }));
          } else if (ch.other_user_id) {
            // DM : room_id = other_user_id (convention frontend)
            // Stocker le mapping userId → channelId pour les appels REST
            if (ch.other_user_name) {
              useChatStore.setState((s) => ({
                memberNames: {
                  ...s.memberNames,
                  [ch.other_user_id]: ch.other_user_name,
                },
              }));
            }
            store.addRoom({
              room_id: ch.other_user_id,
              title: null,
              member_ids: [ch.other_user_id],
            });
            useChatStore.setState((s) => ({
              roomChannelIds: {
                ...s.roomChannelIds,
                [ch.other_user_id]: ch.channel_id,
              },
            }));
          }
        });

        // Charger l'historique de chaque canal et calculer les non-lus
        for (const ch of channels) {
          // roomId = identifiant utilisé dans le store (userId pour DMs, 1 pour général)
          const roomId = ch.is_general
            ? 0
            : (ch.other_user_id ?? ch.channel_id);
          try {
            const { messages: msgs, last_read_message_id } =
              await getChatChannelMessages(ch.channel_id);
            const mapped = (msgs ?? [])
              .map((m) => ({
                message_id: m.id,
                sender_id: m.sender_id,
                sender_name: null,
                content: m.content,
                created_at: m.created_at,
              }))
              .reverse();

            useChatStore.getState().setRoomMessages(roomId, mapped);

            // Marquer les non-lus si des messages sont arrivés depuis la dernière lecture
            if (mapped.length > 0) {
              const myId = useAuthStore.getState().user?.ID;
              const firstUnread =
                last_read_message_id != null
                  ? mapped.findIndex(
                      (m) =>
                        m.message_id > last_read_message_id &&
                        m.sender_id !== myId,
                    )
                  : mapped.findIndex((m) => m.sender_id !== myId);
              if (firstUnread >= 0) {
                const s = useChatStore.getState();
                const isActiveAndOpen = s.isOpen && s.activeRoomId === roomId;
                if (!isActiveAndOpen) {
                  useChatStore.setState((prev) => ({
                    unreadByRoom: {
                      ...prev.unreadByRoom,
                      [roomId]: firstUnread,
                    },
                    hasUnread: true,
                  }));
                }
              }
            }
          } catch (e) {
            if (e?.status !== 403) {
              console.error(
                "[wsService] loadHistory error channel",
                ch.channel_id,
                e,
              );
            }
            // 403 = user not a member (general channel sans inscription), skip silently
          }
        }
      } catch (e) {
        console.error("[wsService] loadChannels error:", e);
      }
    }

    // Chargement initial + polling toutes les 30s
    loadPendingFriendRequests();
    clearInterval(pollTimer);
    pollTimer = setInterval(loadPendingFriendRequests, 30_000);
  };

  socket.onmessage = handleMessage;

  socket.onclose = (event) => {
    if (event.code !== 1000) {
      reconnectTimer = setTimeout(connect, 3000);
    }
  };

  socket.onerror = (err) => {
    console.error("[wsService] WebSocket erreur:", err);
  };
}

function disconnect() {
  clearTimeout(reconnectTimer);
  clearInterval(pollTimer);
  pollTimer = null;
  if (socket) {
    socket.close(1000, "logout");
    socket = null;
  }
  useChatStore.setState({ activeUsers: {} });
}

function getChannelId(roomId) {
  return useChatStore.getState().roomChannelIds[roomId] ?? roomId;
}

export const wsService = {
  connect,
  disconnect,
  send,
  sendMp,
  getUserName,
  getChannelId,
};
