/* eslint-disable react/prop-types */
import { useState, useEffect } from "react";
import { Play, Pause } from "lucide-react";
import { useNavigate } from "react-router-dom";
import { usePlayerStore } from "../../store/playerStore.js";
import { gradientFromId } from "../../services/utils.js";
import { TrackLink } from "./TrackLink.jsx";
import { CreatorLinks } from "./CreatorLinks.jsx";
import { LikeButton } from "./LikeButton.jsx";
import { ThreeDots } from "./ThreeDots.jsx";
import { handleGetLastHistoryLogTrack } from "../../services/APIFRONT/handle.js";

function CoverImage({ url, id, className, delay = 0 }) {
  const [failed, setFailed] = useState(false);
  const [ready, setReady] = useState(delay === 0);

  useEffect(() => {
    if (!url || delay === 0) return;
    const t = setTimeout(() => setReady(true), delay);
    return () => clearTimeout(t);
  }, [url, delay]);

  if (!url || failed || !ready)
    return <div className={`bg-gradient-to-br ${gradientFromId(id)} ${className}`} />;
  return <img src={url} alt="" loading="lazy" className={`object-cover ${className}`} onError={() => setFailed(true)} />;
}

function fmtDuration(seconds) {
  const m = Math.floor(seconds / 60);
  const s = seconds % 60;
  return `${m}:${s.toString().padStart(2, "0")}`;
}

/* ── Petite card compacte ── */
function TrackCard({ track, allTracks, index }) {
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
  const navigate = useNavigate();
  const isActive = currentTrack?.ID === track.ID;

  return (
    <div
      className={`group flex items-center gap-2 rounded-lg px-2 py-1.5 transition-colors ${track.IsDeadLink ? "opacity-40 cursor-not-allowed" : "cursor-pointer hover:bg-whiteW_10"} ${isActive ? "bg-whiteW_10" : ""}`}
      title={track.IsDeadLink ? `${track.Title} (indisponible)` : undefined}
      onClick={() => { if (!track.IsDeadLink) navigate(`/tracks/${track.ID}`); }}
    >
      {/* Cover — clic joue la musique */}
      <div
        className="relative shrink-0"
        onClick={(e) => { e.stopPropagation(); if (!track.IsDeadLink) { isActive ? toggle() : handlePlay(); } }}
      >
        <CoverImage url={track.CoverURL} id={track.ID} className="h-9 w-9 rounded" delay={index * 300} />
        <div className="absolute inset-0 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity">
          <button
            title={isActive && isPlaying ? "Pause" : "Lecture"}
            className="flex h-6 w-6 items-center justify-center rounded-full bg-redWHv text-white"
          >
            {isActive && isPlaying ? <Pause size={10} /> : <Play size={10} />}
          </button>
        </div>
      </div>

      {/* Titre + artiste */}
      <div className="flex-1 min-w-0">
        <TrackLink
          track={track}
          className={`block text-xs font-semibold truncate hover:underline ${isActive ? "text-redWHv" : "text-whiteW"}`}
        />
        <span onClick={(e) => e.stopPropagation()}>
          <CreatorLinks creator={track.Creator} className="hidden sm:block text-[11px] text-whiteW_50 truncate" />
        </span>
      </div>

      {/* Durée + actions (masqué sur mobile) */}
      <div className="hidden sm:flex items-center gap-1 shrink-0 text-[11px] text-whiteW_50" onClick={(e) => e.stopPropagation()}>
        <LikeButton track={track} className="invisible group-hover:visible" showIfLiked />
        <span>{fmtDuration(track.DurationSeconds)}</span>
        <ThreeDots track={track} />
      </div>
    </div>
  );
}

/* ── Top track card (plus grande) ── */

function TopTrackCard({ track, allTracks }) {
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
  const navigate = useNavigate();
  const isActive = currentTrack?.ID === track.ID;

  return (
    <div
      className={`group flex items-center gap-3 rounded-xl bg-whiteW_10 px-3 py-2.5 mb-2 transition-colors ${track.IsDeadLink ? "opacity-40 cursor-not-allowed" : "cursor-pointer hover:bg-whiteW/10"}`}
      title={track.IsDeadLink ? `${track.Title} (indisponible)` : undefined}
      onClick={() => { if (!track.IsDeadLink) navigate(`/tracks/${track.ID}`); }}
    >
      {/* Cover — clic joue la musique */}
      <div
        className="relative shrink-0"
        onClick={(e) => { e.stopPropagation(); if (!track.IsDeadLink) { isActive ? toggle() : handlePlay(); } }}
      >
        <CoverImage url={track.CoverURL} id={track.ID} className="h-14 w-14 rounded" />
        <div className="absolute inset-0 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity">
          <button
						title={isActive && isPlaying ? "Pause" : "Lecture"}
						className="flex h-6 w-6 items-center justify-center rounded-full bg-redWHv text-white"
					>
            {isActive && isPlaying ? <Pause size={12} /> : <Play size={12} />}
          </button>
        </div>
      </div>
      <div className="min-w-0 flex-1">
        <TrackLink
          track={track}
          className={`block text-sm font-bold truncate hover:underline ${isActive ? "text-redWHv" : "text-whiteW"}`}
        />
        <span onClick={(e) => e.stopPropagation()}>
          <CreatorLinks creator={track.Creator} className="hidden sm:block text-xs text-whiteW_50 truncate" />
        </span>
      </div>
      <div className="hidden sm:flex items-center gap-1 shrink-0 text-xs text-whiteW_50" onClick={(e) => e.stopPropagation()}>
        <LikeButton track={track} className="invisible group-hover:visible" showIfLiked />
        <span>{fmtDuration(track.DurationSeconds)}</span>
        <ThreeDots track={track} />
      </div>
    </div>
  );
}

/* ── Composant principal ── */
export function SearchResults({ query, tracks }) {
  if (tracks.length === 0) {
    return (
      <div className="flex flex-col items-center justify-center py-10 text-whiteW_50 space-y-1">
        <p className="text-sm font-semibold text-whiteW">Aucun résultat pour « {query} »</p>
        <p className="text-xs">Vérifie l'orthographe ou essaie d'autres mots-clés.</p>
      </div>
    );
  }

  const [top, ...rest] = tracks;

  return (
    <div className="flex flex-col gap-0.5">
      <TopTrackCard track={top} allTracks={tracks} />
      {rest.map((track, i) => (
        <TrackCard key={track.ID} track={track} allTracks={tracks} index={i + 1} />
      ))}
    </div>
  );
}

export default SearchResults;
