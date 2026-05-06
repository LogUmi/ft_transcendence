import { create } from "zustand";
import { persist } from "zustand/middleware";

export const usePlaylistStore = create(
  persist(
    (set) => ({
      playlists: [],

      setPlaylists: (playlists) => set({ playlists }),

      addPlaylist: (playlist) =>
        set((state) => ({ playlists: [...state.playlists, playlist] })),

      removePlaylist: (id) =>
        set((state) => ({
          playlists: state.playlists.filter((p) => p.ID !== id),
        })),

      updatePlaylist: (updated) =>
        set((state) => ({
          playlists: state.playlists.map((p) =>
            p.ID === updated.ID ? updated : p,
          ),
        })),
    }),
    { name: "playlist-store" },
  ),
);
