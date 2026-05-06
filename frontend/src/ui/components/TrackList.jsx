/* eslint-disable react/prop-types */
import { useRef, useState, useEffect } from "react";
import { usePlayerStore } from "../../store/playerStore.js";
import { CreatorLinks } from "./CreatorLinks.jsx";
import { TrackLink } from "./TrackLink.jsx";
import { ThreeDots } from "./ThreeDots.jsx";
import { CoverPlay } from "./CoverPlay.jsx";
import { LikeButton } from "./LikeButton.jsx";

function fmtDuration(seconds) {
	const m = Math.floor(seconds / 60);
	const s = seconds % 60;
	return `${m}:${s.toString().padStart(2, "0")}`;
}

/*
	Réutilisable pour albums et playlists.
	Props :
	- tracks : tableau d'objets { id, title, duration_seconds, creators[], cover_url }
*/
const PAGE = 50;

export function TrackList({ tracks, showLikedAlways = true })
{
	const { currentTrack } = usePlayerStore();
	const [visibleCount, setVisibleCount] = useState(PAGE);
	const sentinelRef = useRef(null);

	// Reset au changement de collection
	useEffect(() => { setVisibleCount(PAGE); }, [tracks]);

	useEffect(() => {
		const el = sentinelRef.current;
		if (!el) return;
		const observer = new IntersectionObserver(
			([entry]) => {
				if (entry.isIntersecting)
					setVisibleCount((n) => Math.min(n + PAGE, tracks.length));
			},
			{ rootMargin: "300px" },
		);
		observer.observe(el);
		return () => observer.disconnect();
	}, [tracks.length]);

	const visible = tracks.slice(0, visibleCount);

	return (
		<div className="rounded-card bg-blackW text-whiteW">
			<table className="w-full text-sm">
				<thead>
					<tr className="border-b border-whiteW_20 text-xs text-whiteW_50 uppercase tracking-wider">
						<th className="py-3 pl-6 pr-4 text-right w-10">#</th>
						<th className="py-3 px-4 w-12" />
						<th className="py-3 px-4 text-left">Titre</th>
						<th className="py-3 px-4 text-right">Durée</th>
						<th className="py-3 pl-4 pr-6 w-10" />
					</tr>
				</thead>
				<tbody>
					{visible.map((track, index) => {
						const isActuallyPlayed = currentTrack?.ID === track.ID;
						return (
							<tr
								key={track.ID}
								className={`
									group transition-colors
									${track.IsDeadLink ? "opacity-40 cursor-not-allowed" : "cursor-pointer hover:bg-whiteW_10"}
									${isActuallyPlayed ? "text-redWHv" : ""}
								`}
								title={track.IsDeadLink ? `${track.Title} (indisponible)` : undefined}
							>
								{/* Numéro */}
								<td className="py-3 pl-6 pr-4 text-right text-whiteW_50">
									{index + 1}
								</td>

								{/* Jaquette */}
								<td className="py-3 px-4">
									<CoverPlay track={track} allTracks={tracks} size={36} />
								</td>

								{/* Titre + artistes */}
								<td className="py-3 px-4 max-w-0 w-full">
									<div className="flex flex-col min-w-0">
										<TrackLink track={track} className="font-semibold hover:underline truncate" />
										<CreatorLinks creator={track.Creator} className="text-xs text-whiteW_50" />
									</div>
								</td>

								{/* Durée */}
								<td className="py-3 px-6 text-right text-whiteW_70">
									{fmtDuration(track.DurationSeconds)}
								</td>

								{/* Actions */}
								<td className="py-3 pl-4 pr-6">
									<div className="flex items-center justify-end gap-1">
										<LikeButton track={track} className="invisible group-hover:visible" showIfLiked={showLikedAlways} />
										<ThreeDots track={track} />
									</div>
								</td>
							</tr>
						);
					})}
				</tbody>
			</table>
			<div ref={sentinelRef} />
		</div>
	);
}
