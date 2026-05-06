import { useNavigate, useParams, Link } from "react-router-dom";
import { useState, useEffect } from "react";
import { Play, Pause, Info, Copy } from "lucide-react";
import * as Dialog from "@radix-ui/react-dialog";
import { Button } from "../ui/primitives/Button";
import { CreatorLinks } from "../ui/components/CreatorLinks";
import { CollectionLinks } from "../ui/components/CollectionLinks";
import { usePlayerStore } from "../store/playerStore.js";
import { gradientFromId, resolveUrl } from "../services/utils.js";
import { handleGetLastHistoryLogTrack, handleGetTrack } from "../services/APIFRONT/handle.jsx";
import { toast } from "sonner";
import ThreeDots from "../ui/components/ThreeDots.jsx";
import { LikeButton } from "../ui/components/LikeButton.jsx";
import GenreLinks from "../ui/components/GenreLinks.jsx";

function fmtDuration(seconds) {
  const m = Math.floor(seconds / 60);
  const s = seconds % 60;
  return `${m}:${s.toString().padStart(2, "0")}`;
}

export function Track() {
  const { trackID } = useParams();
  const navigate = useNavigate();
  const [track, setTrack] = useState(null);
  const [infoOpen, setInfoOpen] = useState(false);
  const { play, toggle, currentTrack, isPlaying } = usePlayerStore();

  const handlePlay = async () => {
    if (isActive) { toggle(); return; }
    let startPosition = 0;
    if (track?.Type === "podcast") {
			let lastHistoryPodcast = null;
			await handleGetLastHistoryLogTrack(track.ID, (v) => { lastHistoryPodcast = v; });
			startPosition = lastHistoryPodcast?.LastPositionSeconds ?? 0;
		}
    play(track, [], startPosition);
  };

  useEffect(() => {
    handleGetTrack(Number(trackID), setTrack);
  }, [trackID]);

  if (!track) return null;

  const isActive = currentTrack?.ID === track.ID;

  return (
    <div className="space-y-8 overflow-x-auto">
      <Button variant="returnBT" onClick={() => navigate(-1)}>
        ← Retour
      </Button>

      {/* ── Header ── */}
      <div className="flex gap-6 rounded-card bg-blackW text-whiteW p-8">
        {/* Jaquette */}
        {track.CoverURL ? (
          <img
            src={resolveUrl(track.CoverURL)}
            alt={`Jaquette de ${track.Title}`}
            className="h-44 w-44 shrink-0 rounded-card object-cover shadow-2xl"
          />
        ) : (
          <div
            className={`h-44 w-44 shrink-0 rounded-card bg-gradient-to-br ${gradientFromId(track.ID)} shadow-2xl`}
          />
        )}

        <div className="flex flex-col justify-center gap-2">
          <p className="text-xs font-semibold uppercase tracking-widest text-whiteW_50">
            Titre
          </p>
          <h1 className="text-4xl font-bold font-display whitespace-nowrap">{track.Title}</h1>
          <div className="flex flex-col gap-1 text-sm text-whiteW_70">
            <span className="whitespace-nowrap">
              <span className="text-whiteW_50">Artiste : </span>
              <CreatorLinks creator={track.Creator} className="font-semibold text-whiteW hover:underline" />
            </span>
            {track.Collection && (
              <span className="whitespace-nowrap">
                <span className="text-whiteW_50">Album : </span>
                <CollectionLinks collection={track.Collection} className="hover:underline" />
              </span>
            )}
          </div>
          <p className="text-xs text-whiteW_50">
            <span className="whitespace-nowrap">
							<span className="text-whiteW_50">Genre : </span>
							<GenreLinks genre={track.Genre} className="hover:underline" />
						</span>
            {track.ReleaseDate && (
              <>
                {" · "}
                {new Date(track.ReleaseDate).toLocaleDateString("fr-FR", {
                  day: "numeric",
                  month: "long",
                  year: "numeric",
                })}
              </>
            )}
            {" · "}
            {fmtDuration(track.DurationSeconds)}
          </p>
        </div>
      </div>

      {/* ── Actions ── */}
      <div className="flex items-center gap-4 rounded-card bg-blackW text-whiteW px-6 py-4 overflow-x-auto">
        {track.IsDeadLink ? (
          <span className="shrink-0 text-sm text-whiteW_50 italic">Indisponible</span>
        ) : (
          <Button
            variant="iconPlay"
            onClick={handlePlay}
            title={isActive && isPlaying ? "Pause" : "Lire"}
            className="shrink-0"
          >
            {isActive && isPlaying ? (
              <Pause aria-hidden="true" />
            ) : (
              <Play aria-hidden="true" />
            )}
          </Button>
        )}
        <LikeButton track={track} showIfLiked className="shrink-0 h-10 w-10" />
        <ThreeDots track={track} alwaysVisible className="shrink-0 h-10 w-10" />
        <button
          type="button"
          onClick={() => setInfoOpen(true)}
          className="shrink-0 flex h-10 w-10 items-center justify-center text-whiteW hover:text-whiteW_70 transition-colors"
          title="Informations"
        >
          <Info size={20} />
        </button>
      </div>

      {/* ── Dialog infos ── */}
      <Dialog.Root open={infoOpen} onOpenChange={setInfoOpen}>
        <Dialog.Portal>
          <Dialog.Overlay className="fixed inset-0 z-[9999] bg-blackW/50 backdrop-blur-sm" />
          <Dialog.Content className="fixed left-1/2 top-1/2 z-[9999] -translate-x-1/2 -translate-y-1/2 bg-blackW text-whiteW border border-whiteW_20 rounded-card p-6 space-y-4 w-96">
            <Dialog.Title className="text-lg font-semibold">
              Informations sur l'œuvre
            </Dialog.Title>
            <Dialog.Description className="sr-only">
              Source, licence et texte d'attribution de ce titre.
            </Dialog.Description>
            <div className="space-y-3 text-sm">
              <div className="flex gap-2">
                <span className="text-whiteW_50 shrink-0">Source URL :</span>
                <span className="text-whiteW break-all">
                  {track.SourceURL || "—"}
                </span>
              </div>
              <div className="flex gap-2">
                <span className="text-whiteW_50 shrink-0">Licence :</span>
                <span className="text-whiteW">{track.LicenseCode || "—"}</span>
              </div>
              <div className="flex flex-col gap-1">
                <span className="text-whiteW_50">Texte d'attribution :</span>
                <div className="flex gap-2 items-center">
                  <input
                    readOnly
                    value={track.AttributionText || "—"}
                    className="flex-1 bg-transparent border border-whiteW_20 rounded px-3 py-1.5 text-whiteW outline-none"
                  />
                  <button
                    type="button"
                    onClick={() => {
                      navigator.clipboard.writeText(track.AttributionText || "");
                      toast.success("Copié dans le presse-papier — Ctrl+V pour coller");
                    }}
                    className="text-whiteW_50 hover:text-whiteW transition-colors shrink-0"
                    title="Copier"
                  >
                    <Copy size={16} />
                  </button>
                </div>
              </div>
            </div>
            <div className="flex justify-end">
              <Button variant="returnBT" onClick={() => setInfoOpen(false)}>
                Fermer
              </Button>
            </div>
          </Dialog.Content>
        </Dialog.Portal>
      </Dialog.Root>

      {/* ── Paroles ── */}
			{track?.Type === "music" && (
				<div className="rounded-card bg-blackW text-whiteW px-6 py-5 space-y-3">
					<h2 className="text-lg font-semibold">Paroles</h2>
					<p className="text-sm text-whiteW_50 italic">Fonctionnalité à venir.</p>
				</div>
			)}
    </div>
  );
}

export default Track;
