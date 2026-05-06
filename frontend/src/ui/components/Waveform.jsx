import { useLayoutEffect, useEffect, useRef } from "react";
import WaveSurfer from "wavesurfer.js";
import { usePlayerStore } from "../../store/playerStore.js";

export function Waveform({ className = "" }) {
  const containerRef = useRef(null);
  const wavesurferRef = useRef(null);
  const { currentTrack, currentTime, duration } = usePlayerStore();

  // Recrée WaveSurfer quand la track change
  useLayoutEffect(() => {
    if (!containerRef.current || !currentTrack?.AudioURL) return;

    wavesurferRef.current?.destroy();

    wavesurferRef.current = WaveSurfer.create({
      container: containerRef.current,
      url: currentTrack.AudioURL,
      waveColor: "rgb(254, 254, 254)",
      progressColor: "#c0392b",
      cursorColor: "transparent",
      height: "auto",
      barWidth: 2,
      barGap: 1,
      barRadius: 2,
      interact: false,
      backend: "MediaElement",
    });

    return () => {
      wavesurferRef.current?.destroy();
      wavesurferRef.current = null;
    };
  }, [currentTrack]);

  // Sync la progression depuis le store
  useEffect(() => {
    const ws = wavesurferRef.current;
    if (!ws || !duration) return;
    ws.seekTo(currentTime / duration);
  }, [currentTime, duration]);

  if (!currentTrack) return null;

  return <div ref={containerRef} className={`w-full h-full ${className}`} />;
}
