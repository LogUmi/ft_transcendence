/* eslint-disable react/prop-types */
import { gradientFromId, resolveUrl } from "../../services/utils.js";

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
	- name          : nom du genre
	- trackCount    : nombre de titres
	- totalSeconds  : durée totale en secondes
*/
export function GenreHeader({ coverUrl, id = 0, name, trackCount, totalSeconds })
{
	return (
		<div className="flex gap-6 bg-blackW text-whiteW p-6 overflow-x-auto">
			{/* Jaquette */}
			{coverUrl ? (
				<img
					src={resolveUrl(coverUrl)}
					alt={`Jaquette de ${name}`}
					loading="lazy"
					className="h-40 w-auto shrink-0"
				/>
			) : (
				<div className={`h-40 aspect-square shrink-0 bg-gradient-to-br ${gradientFromId(id)}`} />
			)}

			{/* Métadonnées */}
			<div className="flex flex-col justify-center gap-2">
				<p className="text-xs font-semibold uppercase tracking-widest text-whiteW_50 whitespace-nowrap">
					GENRE
				</p>
				<h1 className="text-3xl font-bold font-display whitespace-nowrap">{name}</h1>
				<p className="text-xs text-whiteW_50 whitespace-nowrap">
					{trackCount} titre{trackCount > 1 ? "s" : ""} · {fmt(totalSeconds)}
				</p>
			</div>
		</div>
	);
}
