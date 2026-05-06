import { create } from "zustand";
import { persist } from "zustand/middleware";
import { handleLikeTrack, handleUnlikeTrack } from "../services/APIFRONT/handle";

export const useLikeStore = create(
	persist(
		function (set) {
			return {
				likedIds: [],

				setLikedIds: function (ids) {
					set({ likedIds: ids });
				},

				addLike: async function (trackId) {
					await handleLikeTrack(trackId);
					set(function (state) {
						return { likedIds: [...state.likedIds, trackId] };
					});
				},

				removeLike: async function (trackId) {
					await handleUnlikeTrack(trackId);
					set(function (state) {
						const newIds = [];
						for (let i = 0; i < state.likedIds.length; i++) {
							if (state.likedIds[i] !== trackId) {
								newIds.push(state.likedIds[i]);
							}
						}
						return { likedIds: newIds };
					});
				},
			};
		},
		{
			name: "like-store",
		}
	)
);
