import { Volume2, VolumeX, } from "lucide-react";
import { usePlayerStore } from "../../../store/playerStore.js";

export function VolumeControl() {
	const {
		volume,
		isMuted,
		setVolume,
		setIsMuted,
	} = usePlayerStore();

	const handleVolumeChange = (e) => {
		const val = parseFloat(e.target.value);
		setVolume(val);
		setIsMuted(val === 0);
	};

	return (
		<div className="hidden items-center gap-3 text-[11px] sm:flex">
			{/* Mute toggle */}
			<button
				onClick={() => setIsMuted(!isMuted)}
				className="text-whiteW_70 hover:text-whiteW transition-colors"
				title={isMuted ? "Réactiver le son" : "Couper le son"}
			>
				{isMuted || volume === 0
					? <VolumeX className="h-4 w-4" />
					: <Volume2 className="h-4 w-4" />
				}
			</button>

			{/* Slider volume */}
			<input
				type="range"
				min={0}
				max={1}
				step={0.02}
				value={isMuted ? 0 : volume}
				onChange={handleVolumeChange}
				className="w-24 cursor-pointer accent-redWHv"
				title="Volume"
			/>
		</div>
	);
}
