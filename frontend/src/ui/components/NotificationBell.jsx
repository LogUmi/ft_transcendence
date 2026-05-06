// src/ui/components/NotificationBell.jsx
import * as DropdownMenu from "@radix-ui/react-dropdown-menu";
import { Bell, X } from "lucide-react";
import { useNavigate } from "react-router-dom";
import { useNotificationStore } from "../../store/notificationStore";
import { useChatStore } from "../../store/chatStore";
import { friendRequest } from "../../services/APIFRONT/api";
import { useAuthStore } from "../../store/authStore";
import { ddm } from "../ddmStyles";

// -------------------------------------------------------------------
// Marquer toutes les notifs lues côté API
// À décommenter quand le backend expose PATCH /api/notifications/read
// -------------------------------------------------------------------
// async function apiMarkAllRead() {
//   const { getToken } = await import("../../services/APIFRONT/handle");
//   const token = getToken();
//   if (!token) return;
//   await fetch("/api/notifications/read", {
//     method: "PATCH",
//     headers: { Authorization: `Bearer ${token}` },
//   });
// }

// -------------------------------------------------------------------
// Icônes par type de notification
// -------------------------------------------------------------------
const kindLabel = {
  friend_request:  "Demande d'ami",
  friend_accept:   "Ami accepté",
  friend_rejected: "Demande refusée",
  friend_removed:  "Ami supprimé",
  friend_blocked:  "Bloqué",
  message:         "Message",
  game_invite:     "Invitation de jeu",
};

function FriendRequestActions({ notif }) {
  const removeNotification = useNotificationStore((s) => s.removeNotification);

  async function respond(status) {
    if (!useAuthStore.getState().isAuthenticated) return;
    try {
      await friendRequest(notif.meta.from_user_id, status);
    } catch {}
    removeNotification(notif.id);
  }

  return (
    <div className="flex gap-2 mt-1.5">
      <button
        onClick={(e) => { e.stopPropagation(); respond("granted"); }}
        className="flex-1 py-1 text-xs rounded bg-green-600 hover:bg-green-500 text-white transition-colors font-semibold"
      >
        Accepter
      </button>
      <button
        onClick={(e) => { e.stopPropagation(); respond("rejected"); }}
        className="flex-1 py-1 text-xs rounded bg-whiteW_20 hover:bg-whiteW_10 text-whiteW transition-colors font-semibold"
      >
        Refuser
      </button>
    </div>
  );
}

function NotifItem({ notif }) {
  const markRead           = useNotificationStore((s) => s.markRead);
  const removeNotification = useNotificationStore((s) => s.removeNotification);
  const navigate           = useNavigate();
  const switchRoom         = useChatStore((s) => s.switchRoom);
  const openChat           = useChatStore((s) => s.open);

  function handleSelect(e) {
    if (notif.kind === "friend_request") {
      e.preventDefault(); // garde le dropdown ouvert pour Accept/Refus
      if (notif.meta?.from_user_id) navigate(`/profileUsers/${notif.meta.from_user_id}`);
      return;
    }
    if (notif.kind === "message" && notif.meta?.room_id) {
      switchRoom(notif.meta.room_id);
      openChat();
      markRead(notif.id);
      return;
    }
    markRead(notif.id);
  }

  function handleDelete(e) {
    e.stopPropagation();
    e.preventDefault();
    removeNotification(notif.id);
  }

  return (
    <DropdownMenu.Item
      className={`${ddm.item} group flex gap-2 cursor-pointer ${notif.read ? "opacity-60" : ""}`}
      onSelect={handleSelect}
    >
      <div className="flex flex-col gap-0.5 flex-1 min-w-0">
        <span className="font-medium text-xs text-whiteW_70">
          {kindLabel[notif.kind] ?? notif.kind}
        </span>
        <span className="text-sm text-whiteW">{notif.message}</span>
        {notif.kind === "friend_request" && notif.meta?.from_user_id && (
          <FriendRequestActions notif={notif} />
        )}
      </div>
      <button
        onClick={handleDelete}
        className="shrink-0 self-start mt-0.5 p-0.5 rounded text-whiteW_50 opacity-0 group-hover:opacity-100 hover:text-redW hover:bg-whiteW_10 transition-all"
        title="Supprimer la notification"
      >
        <X size={12} />
      </button>
    </DropdownMenu.Item>
  );
}

export function NotificationBell() {
  const notifications      = useNotificationStore((s) => s.notifications);
  const unreadCount        = useNotificationStore((s) => s.unreadCount);
  const markAllRead        = useNotificationStore((s) => s.markAllRead);
  const setNotifications   = useNotificationStore((s) => s.setNotifications);

  function handleOpen(isOpen) {
    if (isOpen && unreadCount > 0) markAllRead();
  }

  function clearAll(e) {
    e.stopPropagation();
    setNotifications([]);
  }

  return (
    <DropdownMenu.Root onOpenChange={handleOpen}>
      <DropdownMenu.Trigger asChild>
        <button
          type="button"
          className="relative flex items-center justify-center h-14 w-14 rounded-full border bg-blackW border-creamW text-whiteW_70 hover:bg-whiteW_10 hover:text-whiteW shadow-xl hover:scale-110 transition-transform"
          title="Notifications"
        >
          <Bell className="h-6 w-6" />
          {unreadCount > 0 && (
            <span className="absolute -top-1 -right-1 flex h-5 min-w-5 items-center justify-center rounded-full bg-redW px-1 text-xs font-bold text-white">
              {unreadCount > 99 ? "99+" : unreadCount}
            </span>
          )}
        </button>
      </DropdownMenu.Trigger>

      <DropdownMenu.Portal>
        <DropdownMenu.Content
          side="bottom"
          align="end"
          sideOffset={6}
          className={`${ddm.content} w-72 max-h-96 overflow-y-auto`}
        >
          <div className="flex items-center justify-between px-4 py-2">
            <span className="text-xs font-semibold text-whiteW_70 uppercase tracking-wider">
              Notifications
            </span>
            {notifications.length > 0 && (
              <button
                onClick={clearAll}
                className="text-[10px] text-whiteW_50 hover:text-redW transition-colors"
              >
                Tout effacer
              </button>
            )}
          </div>
          <DropdownMenu.Separator className={ddm.separator} />

          {notifications.length === 0 ? (
            <p className="px-4 py-3 text-sm text-whiteW_70">
              Aucune notification
            </p>
          ) : (
            notifications.map((notif) => (
              <NotifItem key={notif.id} notif={notif}/>
            ))
          )}
        </DropdownMenu.Content>
      </DropdownMenu.Portal>
    </DropdownMenu.Root>
  );
}
