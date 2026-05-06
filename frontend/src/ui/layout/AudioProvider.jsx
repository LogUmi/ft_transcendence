import { createContext, useContext, useRef, useEffect, useLayoutEffect, useState } from "react";
import { Toast } from "../components/Toast.jsx";
import { usePlayerStore } from "../../store/playerStore.js";

const AudioContext = createContext(null);
export const useAudio = () => useContext(AudioContext);

export function AudioProvider({ children }) {
  const audioRef = useRef(null);
  const [audioToast, setAudioToast] = useState(null);
  const hasPlayedOnce = useRef(false);
  const tabsSyncRef = useRef(null);

  const {
    currentTrack,
    isPlaying,
    volume,
    isMuted,
    pause: pauseStore,
    resume: resumeStore,
    setCurrentTime,
    setDuration,
    setIsStream,
    playNext,
  } = usePlayerStore();

  /* Synchronisation multi-onglets : met en pause les autres onglets quand on lance la lecture */
  useEffect(() => {
    tabsSyncRef.current = new BroadcastChannel("player");
    tabsSyncRef.current.onmessage = () => usePlayerStore.getState().pause();
    return () => tabsSyncRef.current?.close();
  }, []);

  /* Sauvegarde currentTime + historique avant fermeture/refresh */
  useEffect(() => {
    const handleBeforeUnload = () => {
      if (audioRef.current) setCurrentTime(audioRef.current.currentTime);
      usePlayerStore.getState().recordAndResetTimestamps(true);
    };
    window.addEventListener("beforeunload", handleBeforeUnload);
    return () => window.removeEventListener("beforeunload", handleBeforeUnload);
  }, []);

  /* Chargement automatique quand currentTrack change */
  useLayoutEffect(() => {
    const audio = audioRef.current;
    if (!audio) return;

    if (!currentTrack) {
      audio.pause();
      audio.src = "";
      audio.currentTime = 0;
      return;
    }

    const url = currentTrack?.AudioURL;
    if (!url) return;

    audio.pause();
    const storedTime = usePlayerStore.getState().currentTime;

    audio.src = url;
    audio.load();

    const handleCanPlay = () => {
      if (storedTime > 0) {
        audio.currentTime = storedTime;
        usePlayerStore.getState().setCurrentTime(storedTime);
      }
      if (usePlayerStore.getState().isPlaying) {
        audio.play().then(() => resumeStore()).catch((err) => {
          pauseStore();
          if (err.name === "NotAllowedError")
            setAudioToast({ message: "Cliquez sur play pour démarrer la lecture", variant: "info" });
        });
      }
    };
    audio.addEventListener("canplay", handleCanPlay, { once: true });
    return () => audio.removeEventListener("canplay", handleCanPlay);
  }, [currentTrack]);

  /* Réagit aux changements isPlaying + synchronisation multi-onglets */
  useEffect(() => {
    const audio = audioRef.current;
    if (!audio) return;
    if (isPlaying) {
      tabsSyncRef.current?.postMessage("playing");
      if (audio.paused) audio.play().catch((err) => {
        if (err.name === "NotAllowedError")
          setAudioToast({ message: "Cliquez sur play pour démarrer la lecture", variant: "info" });
      });
    } else if (!audio.paused) {
      audio.pause();
    }
  }, [isPlaying]);

  /* Événements audio */
  useEffect(() => {
    const audio = audioRef.current;
    if (!audio) return;

    const onTimeUpdate = () => setCurrentTime(audio.currentTime);
    const onDurationChange = () => {
      const d = audio.duration;
      setDuration(isFinite(d) ? d : 0);
      setIsStream(!isFinite(d));
    };
    function handleTrackEnded() {
      playNext(false);
    }
    const onPlay = () => { hasPlayedOnce.current = true; };
    const onError = () => {
      if (!currentTrack) return;
      pauseStore();
      const track = usePlayerStore.getState().currentTrack;
      if (hasPlayedOnce.current && track)
        setAudioToast({ message: `"${track.Title}" est indisponible`, variant: "error" });
    };

    audio.addEventListener("timeupdate", onTimeUpdate);
    audio.addEventListener("durationchange", onDurationChange);
    audio.addEventListener("ended", handleTrackEnded);
    audio.addEventListener("play", onPlay);
    audio.addEventListener("error", onError);

    return () => {
      audio.removeEventListener("timeupdate", onTimeUpdate);
      audio.removeEventListener("durationchange", onDurationChange);
      audio.removeEventListener("ended", handleTrackEnded);
      audio.removeEventListener("play", onPlay);
      audio.removeEventListener("error", onError);
    };
  }, []);

  /* Sync volume */
  useEffect(() => {
    const audio = audioRef.current;
    if (!audio) return;
    audio.volume = isMuted ? 0 : volume;
  }, [volume, isMuted]);

  return (
    <AudioContext.Provider value={audioRef}>
      <audio ref={audioRef} preload="none" />
      {audioToast && (
        <Toast
          toast={audioToast.message}
          variant={audioToast.variant}
          onClose={() => setAudioToast(null)}
        />
      )}
      {children}
    </AudioContext.Provider>
  );
}
