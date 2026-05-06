/* eslint-disable react/prop-types */
import { useState } from "react";
import { Play, Pause } from "lucide-react";
import { useNavigate } from "react-router-dom";
import { Button } from "../primitives/Button.jsx";
import { usePlayerStore } from "../../store/playerStore.js";
import { useAuthStore } from "../../store/authStore.js";
import { gradientFromId, resolveUrl } from "../../services/utils.js";
import { handleGetLastHistoryLogTrack } from "../../services/APIFRONT/handle.jsx";

/*
	Jaquette avec bouton play au hover.
	Props :
	- track      : objet track { id, title, cover_url, ... }
	- size       : taille en px (défaut : 36)
	- rounded    : classe tailwind de border-radius (défaut : "rounded")
*/
export function CoverPlay({
  track,
  allTracks = [],
  size = 36,
  rounded = "rounded",
}) {
  const { play, currentTrack, isPlaying, toggle } = usePlayerStore();

  const handlePlay = async () => {
    let startPosition = 0;
    if (track?.Type === "podcast") {
      let lastHistoryPodcast = null;
      await handleGetLastHistoryLogTrack(track.ID, (v) => { lastHistoryPodcast = v; });
      startPosition = lastHistoryPodcast?.LastPositionSeconds ?? 0;
    }
    play(track, allTracks, startPosition);
  };
  const [imgError, setImgError] = useState(false);
  const isAuthenticated = useAuthStore((state) => state.isAuthenticated);
  const navigate = useNavigate();
  const isActive = currentTrack?.ID === track.ID;

  return (
    <div className={`relative shrink-0`} style={{ width: size, height: size }}>
      {/* Jaquette */}
      {track.CoverURL && !imgError ? (
        <img
          src={resolveUrl(track.CoverURL)}
          alt={track.Title}
          loading="lazy"
          className={`w-full h-full object-cover ${rounded}`}
          onError={() => setImgError(true)}
        />
      ) : (
        <div
          className={`w-full h-full bg-gradient-to-br ${gradientFromId(track.ID)} ${rounded}`}
        />
      )}

      {/* Overlay play au hover */}
      {!track.IsDeadLink && (
        <div
          className={`absolute inset-0 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity ${rounded}`}
        >
          <Button
            variant="iconPlay"
            type="button"
            title={isActive && isPlaying ? "Pause" : "Lecture"}
            className="!h-6 !w-6"
            onClick={(e) => {
              e.stopPropagation();
              if (!isAuthenticated) {
                navigate("/login");
                return;
              }
              if (isActive) toggle();
              else handlePlay();
            }}
          >
            {isActive && isPlaying ? (
              <Pause size={12} aria-hidden="true" />
            ) : (
              <Play size={12} aria-hidden="true" />
            )}
          </Button>
        </div>
      )}
    </div>
  );
}

export default CoverPlay;
