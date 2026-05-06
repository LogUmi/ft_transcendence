/* eslint-disable react/prop-types */
import { useNavigate } from "react-router-dom";
import { TrackLink } from "./TrackLink.jsx";
import { usePlayerStore } from "../../store/playerStore.js";
import { gradientFromId, resolveUrl } from "../../services/utils.js";
import { CreatorLinks } from "./CreatorLinks.jsx";
import { Button } from "../primitives/Button.jsx";
import { Play, Pause } from "lucide-react";
import { useAuthStore } from "../../store/authStore";
import { handleGetLastHistoryLogTrack } from "../../services/APIFRONT/handle.js";

export function TrackSection({ title, tracks = [], loading = false }) {
  const { play, currentTrack, isPlaying, toggle } = usePlayerStore();

  const handlePlay = async (track) => {
    let startPosition = 0;
		if (track?.Type === "podcast") {
			let lastHistoryPodcast = null;
			await handleGetLastHistoryLogTrack(track.TrackID, (v) => { lastHistoryPodcast = v; });
			startPosition = lastHistoryPodcast?.LastPositionSeconds ?? 0;
		}
    play(track, tracks, startPosition);
  };
  const navigate = useNavigate();
  const isAuthenticated = useAuthStore((state) => state.isAuthenticated);

  return (
    <section className="space-y-6">
      <div className="flex items-baseline justify-between">
        <h2 className="text-2xl font-semibold whitespace-nowrap">{title}</h2>
      </div>

      <div className="overflow-x-auto">
        <div className="flex gap-6">
          {loading && tracks.length === 0
            ? Array.from({ length: 20 }, (_, i) => (
                <div key={i} className="min-w-[100px] max-w-[100px] sm:min-w-[150px] sm:max-w-[150px] animate-pulse">
                  <div className="aspect-square w-full rounded-[15px] sm:rounded-[22px] bg-whiteW_20" />
                  <div className="mt-1 h-2.5 bg-whiteW_20 rounded w-3/4" />
                  <div className="mt-1 h-2.5 bg-whiteW_20 rounded w-1/2" />
                </div>
              ))
            : tracks.map((track) => (
            <div
              key={track.TrackID}
              className={`min-w-[100px] max-w-[100px] sm:min-w-[150px] sm:max-w-[150px] group ${track.IsDeadLink ? "opacity-40 cursor-not-allowed" : ""}`}
            >
              {/* Jaquette */}
              <div
                className={`relative ${track.IsDeadLink ? "cursor-not-allowed" : "cursor-pointer"}`}
								title={track.IsDeadLink ? `${track.Title} (indisponible)` : track.Title}
                onClick={() => {
                  if (track.IsDeadLink) return;
                  if (!isAuthenticated) {
                    navigate("/login");
                    return;
                  }
                  navigate(`/tracks/${track.TrackID}`);
                }}
              >
                <div className="relative aspect-square w-full rounded-[15px] sm:rounded-[22px] overflow-hidden">
                  <div className={`absolute inset-0 bg-gradient-to-br ${gradientFromId(track.TrackID)}`} />
                  {track.CoverURL && (
                    <img
                      src={resolveUrl(track.CoverURL)}
                      alt={track.Title}
                      loading="lazy"
                      className="absolute inset-0 w-full h-full object-cover"
                      onError={(e) => { e.currentTarget.style.display = "none"; }}
                    />
                  )}
                </div>

                <div className="pointer-events-none absolute inset-0 flex items-center justify-center opacity-0 transition-opacity duration-200 group-hover:opacity-100">
                  <Button
                    variant="iconPlay"
                    type="button"
                    title={currentTrack?.TrackID === track.TrackID && isPlaying ? "Pause" : "Lecture"}
                    className="pointer-events-auto"
                    onClick={(e) => {
                      e.stopPropagation();
                      if (track.IsDeadLink) return;
                      if (!isAuthenticated) {
                        navigate("/login");
                        return;
                      }

                      if (currentTrack?.TrackID === track.TrackID) toggle();
                      else handlePlay(track);
                    }}
                  >
                    {currentTrack?.TrackID === track.TrackID && isPlaying
                      ? <Pause aria-hidden="true" />
                      : <Play aria-hidden="true" />
                    }
                  </Button>
                </div>
              </div>

              {/* Titre */}
              <div className="mt-1 leading-tight overflow-hidden">
                <TrackLink
                  track={track}
                  className="text-[11px] sm:text-[15px] font-semibold text-whiteW hover:underline hover:text-whiteW_40 truncate block w-full"
                />
              </div>

              {/* Artiste */}
              <div className="overflow-hidden">
                <CreatorLinks
                  creator={track.Creator}
                  className="text-[12px] sm:text-[14px] text-whiteW_70 truncate block w-full"
                />
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}

export default TrackSection;
