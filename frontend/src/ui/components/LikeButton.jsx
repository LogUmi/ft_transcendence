import { Button } from "../primitives/Button";
import { Heart, HeartPlus } from "lucide-react";
import { useLikeStore } from "../../store/likeStore.js";

/* eslint-disable react/prop-types */
export function LikeButton({ track, className = "", showIfLiked = true })
{
	const likedIds = useLikeStore((state) => state.likedIds);
	const addLike = useLikeStore((state) => state.addLike);
	const removeLike = useLikeStore((state) => state.removeLike);

	const trackId = track?.ID ?? track?.id;

	let isInFavorite = false;
	for (let i = 0; i < likedIds.length; i++) {
		if (likedIds[i] === trackId) {
			isInFavorite = true;
			break;
		}
	}

	async function handleLike() {
		if (!track) return;
		if (isInFavorite) {
			await removeLike(trackId);
		} else {
			await addLike(trackId);
		}
	}

	return (
		<Button
			variant="iconHeart"
			onClick={handleLike}
			title={isInFavorite ? "Retirer des favoris" : "Ajouter aux favoris"}
			aria-label={isInFavorite ? "Retirer des favoris" : "Ajouter aux favoris"}
			className={showIfLiked && isInFavorite ? "" : className}
		>
			{isInFavorite ? (
				<Heart className="text-redW" fill="currentColor" />
			) : (
				<HeartPlus />
			)}
		</Button>
	);
}
