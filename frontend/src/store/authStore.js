import { create } from "zustand";
import { persist } from "zustand/middleware";
import { usePlayerStore } from "./playerStore.js";
import {
  handleValidate,
  handleGetCurrentUser,
} from "../services/APIFRONT/handle.js";
import { wsService } from "../services/wsService";
import { useNotificationStore } from "./notificationStore.js";

export const useAuthStore = create(
  persist(
    (set) => ({
      user: null,
      isAuthenticated: false,
      role: null,

      setUser: (user) => {
        set({
          user,
          role: user?.RoleName ?? "user",
          isAuthenticated: !!user,
        });
        if (user) wsService.connect();
      },

      logout: () => {
        wsService.disconnect();
        // Enregistre la track en cours puis vide le lecteur
        usePlayerStore.getState().stopAndRecord();
        useNotificationStore.getState().clearNotifications();

        set({
          user: null,
          isAuthenticated: false,
        });
      },

    }),
    {
      // Ce qui est sauvegardé dans le localStorage (survit au refresh)
      name: "auth-store",
      partialize: (state) => ({
        user: state.user,
        isAuthenticated: state.isAuthenticated,
      }),
      // Après restauration depuis le localStorage : si non authentifié, vider le player
      onRehydrateStorage: () => async (state) => {
        if (!state?.isAuthenticated) {
          if (window.location.search.includes("oauth=true")) {
            await handleGetCurrentUser((user) => {
              if (user) state.setUser(user);
            });
          } else {
            await Promise.resolve();
          }
          if (!useAuthStore.getState().isAuthenticated) {
            usePlayerStore.getState().clearPlayer();
          }
          return;
        }
        const valid = await handleValidate();
        if (!valid) {
          state.logout();
        } else {
          wsService.connect();
        }
      },
    },
  ),
);
