/* eslint-disable react/prop-types */
import { gradientFromId } from "../../services/utils.js";

function fmt(seconds) {
	const h = Math.floor(seconds / 3600);
	const m = Math.floor((seconds % 3600) / 60);
	if (h > 0) return `${h} h ${m} min`;
	return `${m} min`;
}

/*
	Props :
	- coverUrl      : URL de la jaquette (ou null)
	- id            : identifiant (pour le gradient de fallback)
	- name          : nom de l'album / playlist
	- creator       : nom du créateur (string) — optionnel, absent si c'est une playlist
	- trackCount    : nombre de titres
	- totalSeconds  : durée totale en secondes
*/
export function CollectionHeader({ coverUrl, id = 0, name, creator, trackCount, totalSeconds })
{
	return (
		<div className="flex gap-6 rounded-card bg-blackW text-whiteW p-6 overflow-x-auto">
			{/* Jaquette */}
			{coverUrl ? (
				<img
					src={coverUrl}
					alt={`Jaquette de ${name}`}
					className="h-40 w-40 shrink-0 rounded-card object-cover"
				/>
			) : (
				<div className={`h-40 w-40 shrink-0 rounded-card bg-gradient-to-br ${gradientFromId(id)}`} />
			)}

			{/* Métadonnées */}
			<div className="flex flex-col justify-center gap-2">
				<p className="text-xs font-semibold uppercase tracking-widest text-whiteW_50 whitespace-nowrap">
					{creator ? "Album" : "Playlist"}
				</p>
				<h1 className="text-3xl font-bold font-display whitespace-nowrap">{name}</h1>
				{creator && (
					<p className="text-sm text-whiteW_70 whitespace-nowrap">{creator}</p>
				)}
				<p className="text-xs text-whiteW_50 whitespace-nowrap">
					{trackCount} titre{trackCount > 1 ? "s" : ""} · {fmt(totalSeconds)}
				</p>
			</div>
		</div>
	);
}
