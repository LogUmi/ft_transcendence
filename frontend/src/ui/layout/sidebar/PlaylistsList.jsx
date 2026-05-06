import { useNavigate } from "react-router-dom";
import { useUIStore } from "../../../store/uiStore";
import { CoverPlay } from "../../components/CoverPlay.jsx";
import { PlaylistCover } from "../../components/PlaylistCover.jsx";

function PlaylistsList({ playlists }) {
	const closeMobileSidebar = useUIStore((s) => s.closeMobileSidebar);
	const navigate = useNavigate();
	return (
		<div className="space-y-1">
			{playlists.map((playlist) => {
				const tracks = (playlist.Contents ?? []).map(content => content.Track);
				return (
					<div
						key={playlist.ID}
						className="inline-flex w-full cursor-pointer items-center gap-2 rounded-pill px-5 py-2 text-sm font-semibold transition-colors duration-150 hover:bg-whiteW_10"
						onClick={() => {
							navigate(`/playlist/${playlist.ID}`);
							closeMobileSidebar();
						}}
					>
						{tracks.length > 0 ? (
							<div className="group shrink-0" onClick={(e) => e.stopPropagation()}>
								<CoverPlay track={tracks[0]} allTracks={tracks} size={48} rounded="rounded-xl" />
							</div>
						) : (
							<PlaylistCover playlist={playlist} size={48} />
						)}
						<span className="line-clamp-2 min-w-0 break-words">{playlist.Title}</span>
					</div>
				);
			})}
		</div>
	);
}

export default PlaylistsList;