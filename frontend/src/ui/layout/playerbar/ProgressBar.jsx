import { usePlayerStore } from "../../../store/playerStore.js";
import { useAudio } from "../AudioProvider.jsx";
import { Waveform } from "../../components/Waveform.jsx";

function fmt(s) {
  if (!s || !isFinite(s)) return "--:--";
  const m = Math.floor(s / 60);
  const sec = Math.floor(s % 60);
  return `${m}:${sec.toString().padStart(2, "0")}`;
}

export function ProgressBar() {
  const audioRef = useAudio();
  const { currentTime, duration, isStream, setIsSeek } = usePlayerStore();

  const handleSeek = (e) => {
    if (isStream || !duration) return;
    const audio = audioRef?.current;
    if (!audio) return;
    const rect = e.currentTarget.getBoundingClientRect();
    const ratio = Math.max(
      0,
      Math.min(1, (e.clientX - rect.left) / rect.width),
    );
    audio.currentTime = ratio * duration;
    setIsSeek(true);
  };

  return (
    <div className="flex w-full max-w-md items-center gap-3 text-[11px] text-whiteW_70">
      <span className="w-8 text-right">{fmt(currentTime)}</span>

      <div
        className={`relative h-[40px] flex-1 rounded-sm overflow-hidden ${!isStream && duration ? "cursor-pointer" : ""}`}
        onClick={handleSeek}
      >
        <Waveform className="absolute inset-0" />
      </div>

      {isStream ? (
        <span className="w-8 rounded-sm bg-redW px-1 text-center text-[9px] font-bold tracking-wider text-whiteW">
          LIVE
        </span>
      ) : (
        <span className="w-8">{fmt(duration)}</span>
      )}
    </div>
  );
}
