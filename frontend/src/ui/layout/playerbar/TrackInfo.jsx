/* eslint-disable react/prop-types */
import { Link } from "react-router-dom";
import { LikeButton } from "../../components/LikeButton.jsx";
import { TrackLink } from "../../components/TrackLink.jsx";
import { CreatorLinks } from "../../components/CreatorLinks.jsx";
import { gradientFromId, resolveUrl } from "../../../services/utils.js";

export function TrackInfo({ track }) {

	// Jaquette : cover si disponible, gradient si track sans cover, rouge si pas de track
	let coverImage;
	if (track?.CoverURL) {
		coverImage = <img src={resolveUrl(track.CoverURL)} alt={track.Title} className="h-10 w-10 shrink-0 rounded-lg object-cover" />;
	} else if (track) {
		coverImage = <div className={`h-10 w-10 shrink-0 rounded-lg bg-gradient-to-br ${gradientFromId(track.ID)}`} />;
	} else {
		coverImage = <div className="h-10 w-10 shrink-0 rounded-lg bg-redW" />;
	}

	const cover = track
		? <Link to={`/tracks/${track.ID}`} className="shrink-0">{coverImage}</Link>
		: coverImage;

	// Titre : lien cliquable si track, texte par défaut sinon
	let titre;
	if (track) {
		titre = <TrackLink track={track} className="hover:underline" />;
	} else {
		titre = "Aucune piste";
	}

	// Artiste : lien cliquable si creator, tiret sinon
	let artiste;
	if (track?.Creator) {
		artiste = <CreatorLinks creator={track.Creator} />;
	} else {
		artiste = "—";
	}

	return (
		<div className="flex items-center gap-2 sm:gap-3 rounded-xl px-2 hover:bg-whiteW/10 w-full">
			{cover}

			<div className="min-w-0 flex-1">
				<div className="truncate text-[14px] font-semibold">{titre}</div>
				<div className="truncate text-[12px] text-whiteW_70">{artiste}</div>
			</div>

			<div className="hidden sm:block">
				<LikeButton track={track} />
			</div>
		</div>
	);
}
