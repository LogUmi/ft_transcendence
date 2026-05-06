/* eslint-disable react/prop-types */
import { useEffect, useState } from "react";
import { handleGetHomeAnalytic } from "../../../services/APIFRONT/handle";
import TrackSection from "../../../ui/components/TrackSection";
import CollectionSection from "../../../ui/components/CollectionSection";
import CreatorSection from "../../../ui/components/CreatorSection";
import GenreSection from "../../../ui/components/GenreSection";

const normalizeTracks = (tracks) =>
	(tracks ?? []).map((t) => ({ ...t, ID: t.TrackID, Creator: { ID: t.CreatorID, Name: t.CreatorName } }));

export function AnalyticsHomeTab({ type }) {
	const [dataSite, setDataSite] = useState();
	const loading = dataSite === undefined;

	useEffect(() => {
		handleGetHomeAnalytic(type, setDataSite);
	}, [type]);

	return (
		<div className="pt-6 space-y-10">
			<TrackSection
				title="A découvrir"
				tracks={normalizeTracks(dataSite?.DiscoverTracks)}
				loading={loading}
			/>
			<TrackSection
				title="Dernières sorties"
				tracks={normalizeTracks(dataSite?.LastReleaseTracks)}
				loading={loading}
			/>
			<TrackSection
				title="Titres les plus écoutés"
				tracks={normalizeTracks(dataSite?.MostListenedTracks)}
				loading={loading}
			/>
			<CollectionSection
				title="Collections les plus écoutées"
				collections={dataSite?.MostListenedAlbums ?? []}
				loading={loading}
			/>
			<CreatorSection
				title="Artistes les plus écoutés"
				creators={dataSite?.MostListenedCreators ?? []}
				loading={loading}
			/>
			<GenreSection
				title="Genres les plus écoutés"
				genres={dataSite?.MostListenedGenres ?? []}
				loading={loading}
			/>
		</div>
	);
}

export default AnalyticsHomeTab;
