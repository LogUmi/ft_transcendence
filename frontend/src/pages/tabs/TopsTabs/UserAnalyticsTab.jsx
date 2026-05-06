/* eslint-disable react/prop-types */
import { useEffect, useState } from "react";
import { handleGetUserAnalytic } from "../../../services/APIFRONT/handle";
import TrackSection from "../../../ui/components/TrackSection";
import CollectionSection from "../../../ui/components/CollectionSection";
import CreatorSection from "../../../ui/components/CreatorSection";
import GenreSection from "../../../ui/components/GenreSection";

const normalizeTracks = (tracks) =>
	(tracks ?? []).map((t) => ({ ...t, ID: t.TrackID, Creator: { ID: t.CreatorID, Name: t.CreatorName } }));

export function UserAnalyticsTab({ type }) {
	const [dataUser, setDataUser] = useState();

	useEffect(() => {
		handleGetUserAnalytic(type, setDataUser);
	}, [type]);

	const isEmpty = dataUser && (
		!dataUser.MostListenedTracks?.length &&
		!dataUser.MostListenedAlbums?.length &&
		!dataUser.MostListenedCreators?.length &&
		!dataUser.MostListenedGenres?.length
	);

	if (isEmpty) {
		return (
			<p className="text-whiteW_50 text-sm mt-4">Vous n'avez pas encore écouté de {type === "podcast" ? "podcast" : "musique"} pour établir vos tops.</p>
		);
	}

	return (
		<div className="space-y-10">
			<TrackSection
				title="Vos titres les plus écoutés"
				tracks={normalizeTracks(dataUser?.MostListenedTracks)}
			/>
			<CollectionSection
				title="Vos collections les plus écoutées"
				collections={dataUser?.MostListenedAlbums ?? []}
			/>
			<CreatorSection
				title="Vos artistes les plus écoutés"
				creators={dataUser?.MostListenedCreators ?? []}
			/>
			<GenreSection
				title="Vos genres les plus écoutés"
				genres={dataUser?.MostListenedGenres ?? []}
			/>
		</div>
	);
}

export default UserAnalyticsTab;
