import { create } from "zustand";
import { persist } from "zustand/middleware";

import { handleRecordHistory, handleGetLastHistoryLogTrack } from "../services/APIFRONT/handle";

const buildHistory = (state) => {
  const endedAt = Date.now();
  let trackInPauseOnChange = 0;
  if (!state.isPlaying && state.PauseStartTime > 0) {
    trackInPauseOnChange = endedAt - state.PauseStartTime;
  }
  const secondsListened = !state.isSeek
    ? state.currentTime - state.TrackStartPosition
    : (endedAt - state.TrackStartTime - state.TotalTrackPausedTime - trackInPauseOnChange) / 1000;

  if (secondsListened < 3) return null;

  const lastPosition = state.savedPosBeforePlayPrev > 0 ? state.savedPosBeforePlayPrev : state.currentTime;

  return {
    TrackID: state.currentTrack?.ID,
    StartedAt: new Date(state.TrackStartTime).toISOString(),
    EndedAt: new Date(endedAt).toISOString(),
    LastPositionSeconds: lastPosition,
    LastSecondsListened: secondsListened,
    Completed: !state.isSkipped && !state.isSeek,
    Skipped: state.isSkipped,
  };
};

export const usePlayerStore = create(
  persist(
    (set, get) => {

      const pickFromWaitList = () => {
        const { currentIndexQueue, waitList } = get();
        const nextTrack = waitList[0];
        set({ waitList: waitList.slice(1) });
        return { nextIndex: currentIndexQueue, nextTrack };
      };

      const pickFromShuffle = () => {
        const { queue, isLooped, shufflePool } = get();
        if (shufflePool.length > 0) {
          const nextIndex = shufflePool[0];
          set({ shufflePool: shufflePool.slice(1) });
          return { nextIndex, nextTrack: queue[nextIndex] };
        }
        if (!isLooped) return null;
        const reloaded = get().shuffleOrder;
        const nextIndex = reloaded[0];
        set({ shufflePool: reloaded.slice(1) });
        return { nextIndex, nextTrack: queue[nextIndex] };
      };

      const pickFromQueue = () => {
        const { queue, currentIndexQueue, isLooped } = get();
        const nextIndex = currentIndexQueue + 1;
        if (nextIndex < queue.length) return { nextIndex, nextTrack: queue[nextIndex] };
        if (isLooped) return { nextIndex: 0, nextTrack: queue[0] };
        return null;
      };

      return {
        // ─── État du lecteur ────────────────────────────────────────────────────

        currentTrack: null,
        isPlaying: false,
        volume: 0.8,
        isMuted: false,
        currentTime: 0,
        duration: 0,
        isStream: false,

        // ─── File de lecture ───────────────────────────────────────────────────

        queue: [], // toutes les chansons du contexte (album, playlist...)
        waitList: [], // toutes les chansons de la file d'attente
        shufflePool: [],  // tableau des index restants à jouer en mode shuffle
        shuffleOrder: [], // ordre pré-mélangé complet, conservé pour le loop
        currentIndexQueue: -1, // index de la chanson en cours dans queue
        isShuffled: false,
        isLooped: false,

        // ─── Données pour history ──────────────────────────────────────────────

        TrackStartTime: 0,        // Timestamp début d'écoute
        TrackStartPosition: 0,    // Position audio (secondes) au moment du démarrage
        PauseStartTime: 0,        // Timestamp de la dernière mise en pause (pour calcul du temps joué)
        TotalTrackPausedTime: 0,  // temps total de mise en pause de la chanson
        isSeek: false,            // true si l'utilisateur a avancé/reculé dans la barre de progression
        isSkipped: false,         // true si la chanson a été sautée (via playNext ou playPrev)
        RefreshTimestamp: 0,      // Timestamp mis à jour en continu — permet de calculer la durée d'un refresh/crash
				savedPosBeforePlayPrev: 0, // sauvegarde la position avant premier clic sur Playprev pour revoyer la bonne position à l'historique

        // ─── Actions de lecture ────────────────────────────────────────────────

        /**
         * Lance une chanson.
         * @param {object} track - La chanson à jouer
         * @param {object[]} allTracks - Toutes les chansons du contexte (album, playlist, ...).
         * @param {number} startPosition - Position de départ en secondes (défaut : 0)
         */
        play: (track, allTracks = [], startPosition = 0) => {
          if (track?.IsDeadLink) return;
          if (get().currentTrack && get().TrackStartTime > 0) {
            set({ isSkipped: true });
            const history = buildHistory(get());
            if (history) handleRecordHistory(history);
          }
          const indexInQueue = allTracks.findIndex((t) => t.ID === track.ID);
					let queueTracks = allTracks;
					if (queueTracks.length > 300) {
						if (indexInQueue < 150) {
							queueTracks = allTracks.slice(0, 300);
						}
						if (allTracks.length - indexInQueue <= 150) {
							queueTracks = allTracks.slice(allTracks.length - 300, allTracks.length);
						}
					}
          set({
            currentTrack: track,
            isPlaying: true,
            currentTime: startPosition,
            duration: 0,
            queue: queueTracks,
            currentIndexQueue: indexInQueue,
            TrackStartTime: 0,
            TrackStartPosition: 0,
            PauseStartTime: 0,

            TotalTrackPausedTime: 0,
            isSeek: false,
            isSkipped: false,
            savedPosBeforePlayPrev: 0,
          });
        },

        /** Met la lecture en pause et enregistre le timestamp de début de pause. */
        pause: () => {
          set({
            isPlaying: false,
            PauseStartTime: Date.now(),
          });
        },

        /**
         * Reprend la lecture.
         * - Premier appel (TrackStartTime === 0) : initialise les timestamps d'historique.
         * - Appels suivants : accumule la durée de pause dans TotalTrackPausedTime.
         */
        resume: () => {
          const now = Date.now();
          if (get().TrackStartTime === 0) {
            set({
              isPlaying: true,
              TrackStartTime: now,
              TrackStartPosition: get().currentTime,
              TotalTrackPausedTime: 0,
              PauseStartTime: 0,
            });
          } else {
            const PauseStartTime = get().PauseStartTime;
            const pauseDuration = PauseStartTime > 0 ? now - PauseStartTime : 0;
            set({
              isPlaying: true,
              TotalTrackPausedTime: get().TotalTrackPausedTime + pauseDuration,
              PauseStartTime: 0,
            });
          }
        },

        /** Bascule entre lecture et pause. */
        toggle: () => {
          const {
            isPlaying,
            PauseStartTime,
            TotalTrackPausedTime,
            TrackStartTime,
          } = get();
          const now = Date.now();

          if (isPlaying) {
            set({
              isPlaying: false,
              PauseStartTime: now,
            });
          } else {
            if (TrackStartTime === 0) {
              set({
                isPlaying: true,
                TrackStartTime: now,
                TrackStartPosition: get().currentTime,
                TotalTrackPausedTime: 0,
                PauseStartTime: 0,
              });
            } else {
              const pauseDuration = PauseStartTime > 0 ? now - PauseStartTime : 0;
              set({
                isPlaying: true,
                TotalTrackPausedTime: TotalTrackPausedTime + pauseDuration,
                PauseStartTime: 0,
              });
            }
          }
        },

        // ─── Actions volume ──────────────────────────────────────────────────────

        setVolume: (v) => set({ volume: v }),
        setIsMuted: (v) => set({ isMuted: v }),

        // ─── Actions audio (mises à jour depuis AudioProvider) ──────────────────

        setCurrentTime: (v) =>
          set({ currentTime: v, RefreshTimestamp: Date.now() }),
        setDuration: (v) => set({ duration: v }),
        setIsStream: (v) => set({ isStream: v }),
        setIsSeek: (v) => set({ isSeek: v }),
				setSavedPosBeforePlayPrev: (v) => set({ savedPosBeforePlayPrev: v }),

        // ─── Navigation dans la queue ────────────────────────────────────────────

        /**
         * Passe à la chanson suivante.
         * Enregistre l'historique de la chanson en cours avant de changer.
         * @param {boolean} skipped - true si saut manuel (clic bouton fwd), false si fin naturelle de la track
         */
        playNext: async (skipped = true) => {
          const { waitList, isShuffled } = get();
          set({ isSkipped: skipped });

          let result;
          if (waitList.length > 0) {
            result = pickFromWaitList();
          } else if (isShuffled) {
            result = pickFromShuffle();
          } else {
            result = pickFromQueue();
          }
					// Si aucune chanson suivante
          if (!result) {
            if (get().TrackStartTime === 0) return; // On n'enregistre pas d'historique si la chanson n'avait pas vraiment commencé
            set({ isPlaying: false });
            const history = buildHistory(get());
            if (history) handleRecordHistory(history);
            set({ TrackStartTime: 0 }); // On reset le StartTime pour ne pas comptabiliser le temps d'inactivité avant une nouvelle chanson
            return;
          }
          // Enregistrement à l'historique de la chanson actuelle avant de passer à la suivante
          const history = buildHistory(get());
          if (history) handleRecordHistory(history);

          let startPosition = 0;
          if (result.nextTrack?.Type === "podcast") {
            let lastHistory = null;
            await handleGetLastHistoryLogTrack(result.nextTrack.ID, (v) => { lastHistory = v; });
            startPosition = lastHistory?.LastPositionSeconds ?? 0;
          }

          set({
            currentTrack: result.nextTrack,
            currentIndexQueue: result.nextIndex,
            isPlaying: true,
            currentTime: startPosition,
            TrackStartTime: 0,
            TrackStartPosition: 0,
            PauseStartTime: 0,
            TotalTrackPausedTime: 0,

            isSeek: false,
            isSkipped: false,
            savedPosBeforePlayPrev: 0,
          });
        },

        /** Revient à la chanson précédente dans la queue. */
        playPrev: async () => {
          const { queue, currentIndexQueue, isLooped } = get();
          set({ isSkipped: true });
          let prevIndex = currentIndexQueue - 1;

          if (prevIndex < 0) {
						if (isLooped) {
							prevIndex = queue.length - 1;
						} else {
							return;
						}
					}

          if (get().TrackStartTime > 0) {
            const history = buildHistory(get());
            if (history) handleRecordHistory(history);
          }

          const prevTrack = queue[prevIndex];
          let startPosition = 0;
          if (prevTrack?.Type === "podcast") {
            let lastHistory = null;
            await handleGetLastHistoryLogTrack(prevTrack.ID, (v) => { lastHistory = v; });
            startPosition = lastHistory?.LastPositionSeconds ?? 0;
          }

          set({
            currentTrack: prevTrack,
            currentIndexQueue: prevIndex,
            isPlaying: true,
            currentTime: startPosition,
            TrackStartTime: 0,
            TrackStartPosition: 0,
            PauseStartTime: 0,
            TotalTrackPausedTime: 0,

            isSeek: false,
            isSkipped: false,
            savedPosBeforePlayPrev: 0,
          });
        },

        /**
         * Ajoute une chanson en fin de file d'attente (waitList).
         * @param {object} track - La chanson à ajouter
         */
        addToWaitList: (track) => {
          const { waitList } = get();
          set({ waitList: [...waitList, track] });
        },

        /** Remet le lecteur à zéro. Appelé à la déconnexion. */
        clearPlayer: () =>
          set({
            currentTrack: null,
            isPlaying: false,
            currentTime: 0,
            duration: 0,
            queue: [],
            waitList: [],
            currentIndexQueue: -1,
            isShuffled: false,
            isLooped: false,
            shufflePool: [],
          }),

        /** Enregistre l'historique et remet les timestamps à zéro, sans toucher au player. Appelé avant fermeture/refresh. */
        recordAndResetTimestamps: (keepalive = false) => {
          if (get().currentTrack && get().TrackStartTime > 0) {
            const history = buildHistory(get());
            if (history) handleRecordHistory(history, undefined, keepalive);
          }
          set({
            TrackStartTime: 0,
            TrackStartPosition: 0,
            PauseStartTime: 0,
            TotalTrackPausedTime: 0,

            isSeek: false,
            isSkipped: false,
            savedPosBeforePlayPrev: 0,
          });
        },

        /** Enregistre l'historique de la track en cours puis vide le player. Appelé à la déconnexion. */
        stopAndRecord: (keepalive = false) => {
          if (get().currentTrack && get().TrackStartTime > 0) {
            const history = buildHistory(get());
            if (history) handleRecordHistory(history, undefined, keepalive);
          }
          get().clearPlayer();
        },

        toggleLoop: () => set((state) => ({ isLooped: !state.isLooped })),

        toggleShuffle: () => {
          const { isShuffled, queue, currentIndexQueue } = get();

          if (!isShuffled) {
            const pool = queue.map((_, i) => i).filter((i) => i !== currentIndexQueue);
            for (let i = pool.length - 1; i > 0; i--) {
              const j = Math.floor(Math.random() * (i + 1));
              const temp = pool[i];
              pool[i] = pool[j];
              pool[j] = temp;
            }
            pool.push(currentIndexQueue);
            set({ isShuffled: true, shufflePool: pool, shuffleOrder: pool });
          } else {
            set({ isShuffled: false, shufflePool: [] });
          }
        },
      };
    },
    {
      name: "player-store",
      onRehydrateStorage: () => (state) => {
        if (!state || !state.currentTrack) return;
        if (state.isPlaying) {
          const now = Date.now();
          if (state.TrackStartTime > 0) {
            state.TotalTrackPausedTime += now - state.RefreshTimestamp;
          }
          state.PauseStartTime = now;
          state.isPlaying = false;
        }
      },
    },
  ),
);
