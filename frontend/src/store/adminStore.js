import { create } from "zustand";

export const useAdminStore = create((set) => ({
  tracks: [],
  tracksLoaded: false,
  setTracks: (tracks) =>
    set({ tracks: Array.isArray(tracks) ? tracks : [], tracksLoaded: true }),
  clearTracks: () => set({ tracks: [], tracksLoaded: false }),
}));
