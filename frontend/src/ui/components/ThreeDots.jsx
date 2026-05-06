import { useState, useRef } from "react";
import * as DropdownMenu from "@radix-ui/react-dropdown-menu";
import * as Dialog from "@radix-ui/react-dialog";
import { ChevronLeft } from "lucide-react";
import { usePlayerStore } from "../../store/playerStore.js";
import { usePlaylistStore } from "../../store/playlistStore.js";
import { toast } from "sonner";
import { ddm } from "../ddmStyles";
import {
  handleAddTrackToPlaylist,
  handleCreatePlaylist,
} from "../../services/APIFRONT/handle.jsx";

export function ThreeDots({ track, alwaysVisible = false }) {
  const [showModal, setShowModal] = useState(false);
  const [newName, setNewName] = useState("");
  const inputRef = useRef(null);
  const { addToWaitList } = usePlayerStore();
  const playlists = usePlaylistStore((state) => state.playlists);
  const addPlaylist = usePlaylistStore((state) => state.addPlaylist);
  const updatePlaylist = usePlaylistStore((state) => state.updatePlaylist);


  async function handleAddToPlaylist(playlistId) {
    let error = null;

		if (playlists.find((p) => p.ID === playlistId)?.Contents?.some((c) => c.TrackID === track.ID)) {
			toast.error("Cette track est déjà dans la playlist");
			return;
		}

    await handleAddTrackToPlaylist(
      playlistId,
      { TrackID: track.ID },
      (err) => { error = err; }
    );

    if (error) {
      toast.error(`Ajout échoué : ${error}`);
      return;
    }

    toast.success(`"${track.Title}" ajoutée à la playlist`);

    const playlist = playlists.find((p) => p.ID === playlistId);
    if (playlist) {
      const newContent = { TrackID: track.ID, Position: (playlist.Contents?.length ?? 0) + 1, Track: track };
      updatePlaylist({ ...playlist, Contents: [...(playlist.Contents ?? []), newContent] });
    }
  }

  async function submitCreatePlaylist() {
    if (!newName.trim()) return;
    const name = newName.trim();
    setShowModal(false);
    setNewName("");

    let created = null;
    let createError = null;

    await handleCreatePlaylist(
      { Title: name },
      (result) => { created = result; },
      (err) => { createError = err; }
    );

    if (createError || !created) {
      toast.error("Création de playlist échouée");
      return;
    }

    let addError = null;

    await handleAddTrackToPlaylist(
      created.ID,
      { TrackID: track.ID },
      (err) => { addError = err; }
    );

    if (addError) {
      toast.error(`Ajout échoué : ${addError}`);
      return;
    }

    addPlaylist({ ...created, Contents: [{ TrackID: track.ID, Position: 1, Track: track }] });
    toast.success(`Playlist "${name}" créée avec "${track.Title}"`);
  }

  function handleShare() {
    navigator.clipboard.writeText(
      `${window.location.origin}/tracks/${track.ID}`,
    );
    toast.success("Le lien a été copié dans votre presse papier");
  }

  return (
    <>
      {/* Menu principal */}
      <DropdownMenu.Root>
        <DropdownMenu.Trigger asChild>
          <button
            type="button"
            title="Options"
            className={`${alwaysVisible ? "opacity-100" : "opacity-0 group-hover:opacity-100"} transition-opacity text-whiteW hover:text-whiteW_70 px-1`}
            onClick={(e) => e.stopPropagation()}
          >
            ···
          </button>
        </DropdownMenu.Trigger>

        <DropdownMenu.Portal>
          <DropdownMenu.Content
            side="right"
            align="start"
            sideOffset={4}
            className={ddm.content}
            onClick={(e) => e.stopPropagation()}
          >
            {/* Ajouter à la file */}
            <DropdownMenu.Item className={ddm.item} onSelect={() => addToWaitList(track)}>
              Ajouter à la file
            </DropdownMenu.Item>

            {/* Ajouter à une playlist + sous-menu */}
            <DropdownMenu.Sub>
              <DropdownMenu.SubTrigger
                className={`${ddm.item} flex items-center justify-between`}
              >
                <ChevronLeft size={14} />
                Ajouter à une playlist
              </DropdownMenu.SubTrigger>

              <DropdownMenu.Portal>
                <DropdownMenu.SubContent sideOffset={4} className={ddm.content}>
                  {playlists.map((p) => (
                    <DropdownMenu.Item
                      key={p.ID}
                      className={ddm.item}
                      onSelect={() => handleAddToPlaylist(p.ID)}
                    >
                      {p.Title}
                    </DropdownMenu.Item>
                  ))}
                  <DropdownMenu.Separator className={ddm.separator} />
                  <DropdownMenu.Item
                    className={ddm.itemDanger}
                    onSelect={() => setShowModal(true)}
                  >
                    + Créer une playlist
                  </DropdownMenu.Item>
                </DropdownMenu.SubContent>
              </DropdownMenu.Portal>
            </DropdownMenu.Sub>

            {/* Partager */}
            <DropdownMenu.Item className={ddm.item} onSelect={handleShare}>
              Partager
            </DropdownMenu.Item>
          </DropdownMenu.Content>
        </DropdownMenu.Portal>
      </DropdownMenu.Root>

      {/* Modal création playlist */}
      <Dialog.Root open={showModal} onOpenChange={setShowModal}>
        <Dialog.Portal>
          <Dialog.Overlay className="fixed inset-0 z-[9999] bg-blackW/50" />
          <Dialog.Content
            className="fixed left-1/2 top-1/2 z-[9999] -translate-x-1/2 -translate-y-1/2 bg-creamW text-blackW rounded-card p-6 space-y-4 w-80"
            onClick={(e) => e.stopPropagation()}
            onOpenAutoFocus={(e) => {
              e.preventDefault();
              inputRef.current?.focus();
            }}
          >
            <Dialog.Title className="text-lg font-semibold">
              Nouvelle playlist
            </Dialog.Title>
            <Dialog.Description className="sr-only">
              Saisissez un nom pour créer une nouvelle playlist.
            </Dialog.Description>
            <input
              ref={inputRef}
              title="Nom de la playlist"
              value={newName}
              maxLength={120}
              onChange={(e) => setNewName(e.target.value)}
              onKeyDown={(e) => {
                if (e.key === "Enter") submitCreatePlaylist();
                if (e.key === "Escape") setShowModal(false);
              }}
              placeholder="Nom de la playlist"
              className="w-full border border-blackW_40 rounded-lg px-3 py-2 text-sm bg-whiteW focus:outline-none"
            />
            <div className="flex justify-end gap-2">
              <button
                className="px-4 py-2 text-sm text-blackW_60 hover:text-blackW"
                onClick={() => setShowModal(false)}
              >
                Annuler
              </button>
              <button
                type="button"
                className="px-4 py-2 text-sm bg-blackW text-whiteW rounded-lg hover:bg-blackW_60"
                onClick={submitCreatePlaylist}
              >
                Créer
              </button>
            </div>
          </Dialog.Content>
        </Dialog.Portal>
      </Dialog.Root>
    </>
  );
}

export default ThreeDots;
