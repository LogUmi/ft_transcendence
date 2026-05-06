import { TrackInfo } from "./playerbar/TrackInfo.jsx";
import { ProgressBar } from "./playerbar/ProgressBar.jsx";
import { PlayerbarButtons } from "./playerbar/PlayerbarButtons.jsx";
import { VolumeControl } from "./playerbar/VolumeControl.jsx";
import { usePlayerStore } from "../../store/playerStore.js";

export function PlayerBar() {
  const { currentTrack } = usePlayerStore();

  return (
    <div className="flex items-center gap-4">
      <div className="min-w-0 w-1/3 sm:w-[270px] sm:flex-none sm:shrink-0">
        <TrackInfo track={currentTrack} />
      </div>

      <div className="flex flex-1 flex-col items-center gap-1">
        <ProgressBar />
        <PlayerbarButtons />
      </div>

      <VolumeControl />
    </div>
  );
}
