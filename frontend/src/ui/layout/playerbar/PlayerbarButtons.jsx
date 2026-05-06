import { Play, Pause, Shuffle, Repeat, SkipBack, SkipForward } from "lucide-react";
import { useNavigate } from "react-router-dom";
import { Button } from "../../primitives/Button.jsx";
import { usePlayerStore } from "../../../store/playerStore.js";
import { useAuthStore } from "../../../store/authStore.js";
import { useAudio } from "../AudioProvider.jsx";

export function PlayerbarButtons() {
	const audioRef = useAudio();
	const isAuthenticated = useAuthStore((state) => state.isAuthenticated);
	const navigate = useNavigate();
	const {
		currentTrack,
		isPlaying,
		isShuffled,
		isLooped,
		currentTime,
		pause: pauseStore,
		resume: resumeStore,
		playNext,
		playPrev,
		toggleShuffle,
		toggleLoop,
		setIsSeek,
		setSavedPosBeforePlayPrev,
	} = usePlayerStore();

	const handlePlayPause = async () => {
		if (!isAuthenticated) { navigate("/login"); return; }
		const audio = audioRef?.current;
		if (!audio) return;

		if (isPlaying) {
			pauseStore();
		} else {
			if (!currentTrack?.AudioURL) return;
			try {
				await audio.play();
				resumeStore();
			} catch (e) {
				console.error("Erreur de lecture :", e);
			}
		}
	};

	const handlePlayPrev = () => {
		const audio = audioRef?.current;
		if (!audio) return;
		if (currentTime > 5) {
			setSavedPosBeforePlayPrev(currentTime);
			audio.currentTime = 0;
			setIsSeek(true);
		} else {
			playPrev();
		}
	};

	return (
		<div className="flex items-center gap-3">
			<Button
				variant="iconLoopRand"
				title={isShuffled ? "Désactiver la lecture aléatoire" : "Activer la lecture aléatoire"}
				onClick={toggleShuffle}
				className={`hidden min-[360px]:inline-flex ${isShuffled ? "!text-redWHv" : ""}`}>
				<Shuffle aria-hidden="true" />
			</Button>
			<Button
				variant="iconBackFwd"
				title="Piste précédente"
				onClick={handlePlayPrev}
			>
				<SkipBack aria-hidden="true" />
			</Button>
			<Button
				variant="iconPlay"
				title={isPlaying ? "Pause" : "Lecture"}
				onClick={handlePlayPause}
			>
				{isPlaying
					? <Pause aria-hidden="true" />
					: <Play aria-hidden="true" />
				}
			</Button>
			<Button variant="iconBackFwd" title="Piste suivante" onClick={() => playNext(true)}>
				<SkipForward aria-hidden="true" />
			</Button>
			<Button
				variant="iconLoopRand"
				title={isLooped ? "Désactiver la boucle" : "Activer la boucle"}
				onClick={toggleLoop}
				className={`hidden min-[360px]:inline-flex ${isLooped ? "!text-redWHv" : ""}`}
			>
				<Repeat aria-hidden="true" />
			</Button>
		</div>
	);
}
