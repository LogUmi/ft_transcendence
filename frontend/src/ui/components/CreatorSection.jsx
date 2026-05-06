/* eslint-disable react/prop-types */

import { useNavigate } from "react-router-dom";
import { gradientFromId, resolveUrl } from "../../services/utils.js";
import CreatorLinks from "./CreatorLinks";

export function CreatorSection({ title, creators = [], loading = false }) {
	const navigate = useNavigate();

	return (
		<section className="space-y-6">
			<div className="flex items-baseline justify-between">
				<h2 className="text-2xl font-semibold whitespace-nowrap">{title}</h2>
			</div>

			<div className="overflow-x-auto">
				<div className="flex gap-6">
					{loading && creators.length === 0
						? Array.from({ length: 6 }, (_, i) => (
								<div key={i} className="min-w-[100px] max-w-[100px] sm:min-w-[150px] sm:max-w-[150px] animate-pulse">
									<div className="aspect-square w-full rounded-[50%_50%_50%_50%_/_60%_60%_40%_40%] bg-whiteW_20" />
									<div className="mt-1 h-2.5 bg-whiteW_20 rounded w-3/4 mx-auto" />
								</div>
							))
						: creators.map((creator) => (
						<div
							key={creator.CreatorID}
							className="min-w-[100px] max-w-[100px] sm:min-w-[150px] sm:max-w-[150px] cursor-pointer"
							title={creator.CreatorName}
							onClick={() => navigate(`/artists/${creator.CreatorID}`)}
						>
							{/* Jaquette */}
							{creator.CreatorCoverURL ? (
								<img
									src={resolveUrl(creator.CreatorCoverURL)}
									alt={creator.CreatorName}
									loading="lazy"
									className="aspect-square w-full rounded-[50%_50%_50%_50%_/_60%_60%_40%_40%] object-cover"
								/>
							) : (
								<div
									className={`
										aspect-square w-full rounded-[50%_50%_50%_50%_/_60%_60%_40%_40%]
										bg-gradient-to-br ${gradientFromId(creator.CreatorID)}
									`}
								/>
							)}

							{/* Nom */}
							<div className="flex justify-center mt-1 leading-tight text-center">
								<CreatorLinks
									creator={{ ID: creator.CreatorID, Name: creator.CreatorName }}
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

export default CreatorSection;
