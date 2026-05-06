// src/store/notificationStore.js
import { create } from "zustand";

export const useNotificationStore = create((set) => ({
  notifications: [],
  unreadCount: 0,

  // Appelé au chargement initial (GET /api/notifications)
  setNotifications: (list) =>
    set({
      notifications: list,
      unreadCount: list.filter((n) => !n.read).length,
    }),

  // Appelé à chaque message WS de type "notification"
  addNotification: (notif) =>
    set((state) => ({
      notifications: [notif, ...state.notifications],
      unreadCount: state.unreadCount + (notif.read ? 0 : 1),
    })),

  // Ajoute ou remplace une notif existante par son id (évite les doublons au polling)
  upsertNotification: (notif) =>
    set((state) => {
      const exists = state.notifications.some((n) => n.id === notif.id);
      if (exists) return state;
      return {
        notifications: [notif, ...state.notifications],
        unreadCount: state.unreadCount + (notif.read ? 0 : 1),
      };
    }),

  // Appelé à l'ouverture du dropdown
  markAllRead: () =>
    set((state) => ({
      notifications: state.notifications.map((n) => ({ ...n, read: true })),
      unreadCount: 0,
    })),

  // Appelé au clic sur une notif individuelle
  markRead: (id) =>
    set((state) => {
      const updated = state.notifications.map((n) =>
        n.id === id ? { ...n, read: true } : n
      );
      return {
        notifications: updated,
        unreadCount: updated.filter((n) => !n.read).length,
      };
    }),

  removeNotification: (id) =>
    set((state) => {
      const updated = state.notifications.filter((n) => n.id !== id);
      return {
        notifications: updated,
        unreadCount: updated.filter((n) => !n.read).length,
      };
    }),

  removeMessageNotifs: (roomId) =>
    set((state) => {
      const updated = state.notifications.filter(
        (n) => !(n.kind === "message" && n.meta?.room_id === roomId),
      );
      return {
        notifications: updated,
        unreadCount: updated.filter((n) => !n.read).length,
      };
    }),
	clearNotifications: () =>
		set({
			notifications: [],
			unreadCount: 0,
		}),
}));
