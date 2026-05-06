/* eslint-disable react/prop-types */

import { useNavigate } from "react-router-dom";
import { gradientFromId, resolveUrl } from "../../services/utils.js";
import CollectionLinks from "./CollectionLinks";

export function CollectionSection({ title, collections = [], loading = false }) {
	const navigate = useNavigate();

	return (
		<section className="space-y-6">
			<div className="flex items-baseline justify-between">
				<h2 className="text-2xl font-semibold whitespace-nowrap">{title}</h2>
			</div>

			<div className="overflow-x-auto">
				<div className="flex gap-6">
					{loading && collections.length === 0
						? Array.from({ length: 6 }, (_, i) => (
								<div key={i} className="min-w-[100px] max-w-[100px] sm:min-w-[150px] sm:max-w-[150px] animate-pulse">
									<div className="aspect-square w-full rounded-full bg-whiteW_20" />
									<div className="mt-1 h-2.5 bg-whiteW_20 rounded w-3/4 mx-auto" />
								</div>
							))
						: collections.map((collection) => (
						<div
							key={collection.CollectionID}
							className="min-w-[100px] max-w-[100px] sm:min-w-[150px] sm:max-w-[150px] cursor-pointer"
							title={collection.CollectionName}
							onClick={() => navigate(`/collections/${collection.CollectionID}`)}
						>
							{/* Jaquette */}
							{collection.CollectionCoverURL ?(
								<img
									src={resolveUrl(collection.CollectionCoverURL)}
									alt={collection.CollectionName}
									loading="lazy"
									className="aspect-square w-full rounded-full object-cover"
								/>
							) : (
								<div
									className={`
										aspect-square w-full rounded-full
										bg-gradient-to-br ${gradientFromId(collection.CollectionID)}
									`}
								/>
							)}

							{/* Titre */}
							<div className="flex justify-center mt-1 leading-tight text-center">
								<CollectionLinks
									collection={{ ID: collection.CollectionID, Name: collection.CollectionName }}
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

export default CollectionSection;



// /* eslint-disable react/prop-types */
// import { Link, useNavigate } from "react-router-dom";
// import { TrackLink } from "./TrackLink.jsx";
// import { usePlayerStore } from "../../store/playerStore.js";
// import { gradientFromId } from "../../services/utils.js";
// import { CreatorLinks } from "./CreatorLinks.jsx";
// import { Button } from "../primitives/Button.jsx";
// import { Play } from "lucide-react";
// import { useAuthStore } from "../../store/authStore";
// import { handleGetLastHistoryLogTrack } from "../../services/APIFRONT/handle.js";

// /*
// 	Réutilisable pour afficher une collection de tracks en liste horizontale scrollable.
// 	Props :
// 	- title      : titre de la section (ex: "Nouveautés")
// 	- subtitle   : sous-titre optionnel (ex: "cette semaine")
// 	- to         : route du lien "Voir tout" — si absent, le lien n'est pas affiché
// 	- tracks     : tableau de tracks à afficher
// */

// export function CollectionSection({ title, subtitle, to, tracks = [] }) {
//   const { play, currentTrack, toggle } = usePlayerStore();

//   const handlePlay = async (track) => {
//     let startPosition = 0;
// 		if (track?.Type === "podcast") {
// 			let lastHistoryPodcast = null;
// 			await handleGetLastHistoryLogTrack(track.ID, (v) => { lastHistoryPodcast = v; });
// 			startPosition = lastHistoryPodcast?.LastPositionSeconds ?? 0;
// 		}
//     play(track, tracks, startPosition);
//   };
//   const navigate = useNavigate();
//   const isAuthenticated = useAuthStore((state) => state.isAuthenticated);

//   return (
//     <section className="space-y-6">
//       {/* Ligne titre + lien */}
//       <div className="flex items-baseline justify-between">
//         <div className="flex items-center gap-3">
//           <h2 className="text-2xl font-semibold">{title}</h2>
//           {subtitle && (
//             <span className="text-sm relative top-[2px] text-blackW_60">
//               – {subtitle}
//             </span>
//           )}
//         </div>

//         {to && (
//           <Link
//             to={to}
//             className="text-sm font-mono font-bold uppercase tracking-[0.10em] text-blackW_60 hover:text-blackW_40"
//           >
//             Voir tout →
//           </Link>
//         )}
//       </div>

//       {/* Liste horizontale scrollable */}
//       <div className="overflow-x-auto">
//         <div className="flex gap-6">
//           {tracks.map((track) => (
//             <article
//               key={track.ID}
//               className="min-w-[100px] max-w-[100px] group"
//             >
//               {/* Jaquette + bouton play */}
//               <div
//                 className="relative cursor-pointer"
//                 onClick={() => {
//                   if (!isAuthenticated) {
//                     navigate("/login");
//                     return;
//                   }
//                   navigate(`/tracks/${track.ID}`);
//                 }}
//               >
//                 <div
//                   className={`
// 										aspect-square w-full rounded-[15px]
// 										bg-gradient-to-br ${gradientFromId(track.ID)}
// 									`}
//                 />

//                 <div className="pointer-events-none absolute inset-0 flex items-center justify-center opacity-0 transition-opacity duration-200 group-hover:opacity-100">
//                   <Button
//                     variant="iconPlay"
//                     type="button"
//                     className="pointer-events-auto"
//                     onClick={(e) => {
//                       e.stopPropagation();
//                       if (!isAuthenticated) {
//                         navigate("/login");
//                         return;
//                       }

//                       if (currentTrack?.ID === track.ID) toggle();
//                       else handlePlay(track);
//                     }}
//                   >
//                     <Play aria-hidden="true" />
//                   </Button>
//                 </div>
//               </div>

//               {/* Titre */}
//               <div className="flex justify-center mt-1 leading-tight">
//                 <TrackLink
//                   track={track}
//                   className="text-[11px] font-semibold text-blackW hover:underline hover:text-blackW_40 truncate w-full"
//                 />
//               </div>

//               {/* Artistes */}
//               <CreatorLinks
//                 creator={track.Creator}
//                 className="text-[12px] text-blackW_60 truncate w-full"
//               />
//             </article>
//           ))}
//         </div>
//       </div>
//     </section>
//   );
// }

// export default CollectionSection;
