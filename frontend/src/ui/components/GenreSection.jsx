/* eslint-disable react/prop-types */

import { useNavigate } from "react-router-dom";
import { gradientFromId, resolveUrl } from "../../services/utils.js";
import GenreLinks from "./GenreLinks";

export function GenreSection({ title, genres = [], loading = false }) {
	const navigate = useNavigate();

	return (
		<section className="space-y-6">
			<div className="flex items-baseline justify-between">
				<h2 className="text-2xl font-semibold whitespace-nowrap">{title}</h2>
			</div>

			<div className="overflow-x-auto">
				<div className="flex gap-6">
					{loading && genres.length === 0
						? Array.from({ length: 6 }, (_, i) => (
								<div key={i} className="min-w-[100px] max-w-[100px] sm:min-w-[150px] sm:max-w-[150px] animate-pulse">
									<div className="aspect-square w-full bg-whiteW_20 rounded" />
									<div className="mt-1 h-2.5 bg-whiteW_20 rounded w-3/4 mx-auto" />
								</div>
							))
						: genres.map((genre) => (
						<div
							key={genre.GenreID}
							className="min-w-[100px] max-w-[100px] sm:min-w-[150px] sm:max-w-[150px] cursor-pointer"
							title={genre.GenreName}
							onClick={() => navigate(`/genre/${genre.GenreID}?name=${encodeURIComponent(genre.GenreName)}`)}
						>
							{/* Jaquette */}
							{genre.GenreCoverURL ? (
								<img
									src={resolveUrl(genre.GenreCoverURL)}
									alt={genre.GenreName}
									loading="lazy"
									className="w-full h-auto"
								/>
							) : (
								<div className={`aspect-square w-full bg-gradient-to-br ${gradientFromId(genre.GenreID)}`} />
							)}

							{/* Nom */}
							<div className="flex justify-center mt-1 leading-tight text-center">
								<GenreLinks
									genre={{ ID: genre.GenreID, Name: genre.GenreName }}
									className="text-[11px] sm:text-[15px] font-semibold text-whiteW hover:underline hover:text-whiteW_40 line-clamp-2 w-full"
								/>
							</div>
						</div>
					))}
				</div>
			</div>
		</section>
	);
}

export default GenreSection;
