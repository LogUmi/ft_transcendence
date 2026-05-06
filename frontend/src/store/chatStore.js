// src/store/chatStore.js
import { create } from "zustand";

export const useChatStore = create((set, get) => ({

  // ── UI ────────────────────────────────────────────────────────────────────
  isOpen:    false,
  hasUnread: false,

  // ── Rooms : [{ room_id, title, member_ids }] ──────────────────────────────
  rooms:          [],
  activeRoomId:   null,
  pendingGeneral: false, // flag auto-switch vers "général" à l'ouverture WS

  // ── Messages : { room_id: [{ message_id, sender_id, sender_name, content, created_at }] }
  messages: {},

  // ── Cache noms : { user_id: username } ───────────────────────────────────
  memberNames: {},

  // ── Statut en ligne : { room_id: { user_id: bool } } (backend ws) ──────────
  memberStatus: {},

  // ── Mapping userId → channelId pour les DMs (nécessaire pour les appels REST) ─
  roomChannelIds: {},

  // ── Statut amis (friend.online.list + friend.status) : { user_id: bool } ──
  friendOnlineStatus: {},

  setFriendOnline: (userId, isOnline) =>
    set((state) => ({
      friendOnlineStatus: { ...state.friendOnlineStatus, [userId]: isOnline },
    })),

  setFriendOnlineList: (ids) =>
    set((state) => {
      const next = { ...state.friendOnlineStatus };
      ids.forEach((id) => { next[id] = true; });
      return { friendOnlineStatus: next };
    }),

  // ── Utilisateurs actifs (frontend) : { user_id: timestamp_ms } ──────────
  // Vert si message reçu dans les 2 dernières minutes, rouge sinon
  activeUsers: {},

  setUserActive: (userId) =>
    set((state) => ({ activeUsers: { ...state.activeUsers, [userId]: Date.now() } })),

  // ── Non lus par room : { room_id: index_début_non_lus } ──────────────────
  unreadByRoom: {},

  // ── Erreur WS : affichée 4s puis effacée ─────────────────────────────────
  wsError: null,

  // ── Actions UI ────────────────────────────────────────────────────────────
  open:       () => set({ isOpen: true, hasUnread: false }),
  reduce:     () => set({ isOpen: false }),
  markUnread: () => set({ hasUnread: true }),

  // ── Flag général ──────────────────────────────────────────────────────────
  setPendingGeneral: (val) => set({ pendingGeneral: val }),

  // ── Erreur WS ─────────────────────────────────────────────────────────────
  setWsError: (msg) => {
    set({ wsError: msg });
    setTimeout(() => set({ wsError: null }), 4000);
  },

  // ── room_created : ajouter la room si inconnue + auto-switch ──────────────
  addRoom: ({ room_id, title, member_ids }) => {
    const state = get();
    const alreadyKnown = state.rooms.find((r) => r.room_id === room_id);
    if (!alreadyKnown) {
      set({ rooms: [...state.rooms, { room_id, title, member_ids }] });
    }
    // Auto-switch vers "général" au chargement initial (ID toujours 1)
    if (state.pendingGeneral && room_id === 0) {
      set({ activeRoomId: room_id, pendingGeneral: false });
    }
  },

  // ── user_status : mise à jour statut membre ───────────────────────────────
  setMemberStatus: ({ user_id, room_id, online }) => {
    set((state) => ({
      memberStatus: {
        ...state.memberStatus,
        [room_id]: { ...(state.memberStatus[room_id] ?? {}), [user_id]: online },
      },
    }));
  },

  // ── chat_message : ajouter le message + gérer non-lus ────────────────────
  receiveMessage: ({ room_id, sender_id, sender_name, content, created_at, message_id }) => {
    const msg = { message_id, sender_id, sender_name, content, created_at };

    set((state) => {
      const memberNames = sender_id && sender_name
        ? { ...state.memberNames, [sender_id]: sender_name }
        : state.memberNames;

      const prev     = state.messages[room_id] ?? [];
      const isActive = state.isOpen && state.activeRoomId === room_id;

      let unreadByRoom = state.unreadByRoom;
      if (!isActive && unreadByRoom[room_id] === undefined) {
        unreadByRoom = { ...unreadByRoom, [room_id]: prev.length };
      }

      return {
        memberNames,
        messages:    { ...state.messages, [room_id]: [...prev, msg] },
        unreadByRoom,
        hasUnread:   isActive ? state.hasUnread : true,
      };
    });
  },

  // ── switchRoom : changer de room active + effacer non-lus ─────────────────
  switchRoom: (roomId) => {
    set((state) => {
      const unreadByRoom = { ...state.unreadByRoom };
      delete unreadByRoom[roomId];
      return { activeRoomId: roomId, unreadByRoom };
    });
  },

  // ── markLastMessageFailed : marque le dernier message non confirmé comme échoué ──
  markLastMessageFailed: (room_id) => set((state) => {
    const msgs = state.messages[room_id] ?? [];
    const idx = [...msgs].reverse().findIndex((m) => m.message_id === null && !m.failed);
    if (idx === -1) return {};
    const realIdx = msgs.length - 1 - idx;
    const updated = msgs.map((m, i) => i === realIdx ? { ...m, failed: true } : m);
    return { messages: { ...state.messages, [room_id]: updated } };
  }),

  // ── setRoomMessages : charger l'historique REST d'une room ───────────────
  setRoomMessages: (room_id, msgs) =>
    set((state) => ({ messages: { ...state.messages, [room_id]: msgs } })),

  // ── leaveRoom : retirer la room + reset activeRoomId si besoin ───────────
  leaveRoom: (roomId) => {
    set((state) => {
      const rooms        = state.rooms.filter((r) => r.room_id !== roomId);
      const activeRoomId = state.activeRoomId === roomId ? null : state.activeRoomId;
      return { rooms, activeRoomId };
    });
  },
}));
