import { useEffect, useState, useRef } from "react";
import * as Dialog from "@radix-ui/react-dialog";
import { useNavigate } from "react-router-dom";
import { toast } from "sonner";
import { useAuthStore } from "../store/authStore";
import { usePlaylistStore } from "../store/playlistStore";
import { Button } from "../ui/primitives/Button";
import { PlaylistCover } from "../ui/components/PlaylistCover.jsx";
import {
  Pencil,
  Trash2,
  ChevronDown,
  ChevronUp,
  GripVertical,
} from "lucide-react";
import {
  handleGetPlaylists,
  handleRenamePlaylist,
  handleDeletePlaylist,
  handleRemoveTrackFromPlaylist,
  handleReorderPlaylistTracks,
} from "../services/APIFRONT/handle.jsx";


export default function PlaylistsManager() {
  const navigate = useNavigate();
  const user = useAuthStore((state) => state.user);
  const playlists = usePlaylistStore((state) => state.playlists);
  const { setPlaylists, removePlaylist, updatePlaylist } = usePlaylistStore();
  const [editingId, setEditingId] = useState(null);
  const [editingTitle, setEditingTitle] = useState("");
	const [oldTitle, setOldTitle] = useState("");
  const [expandedPlaylistID, setExpandedPlaylistID] = useState(null);
  const [dragIndex, setDragIndex] = useState(null);
  const [confirmDeletePlaylist, setConfirmDeletePlaylist] = useState(null);

  useEffect(() => {
    if (!user || playlists.length > 0) return;
    handleGetPlaylists((data) => setPlaylists(data ?? []));
  }, [user]);

  function handleRename(playlist) {
    setEditingId(playlist.ID);
    setEditingTitle(playlist.Title);
		setOldTitle(playlist.Title);
  }

  function handleRenameConfirm(playlistId) {
    if (!editingTitle.trim()) return;
    const newTitle = editingTitle.trim();
		if (newTitle === oldTitle) {
			setEditingId(null);
			setEditingTitle("");
			setOldTitle("");
			return;
		}
    const playlist = playlists.find((p) => p.ID === playlistId);
    if (playlist) updatePlaylist({ ...playlist, Title: newTitle });
    handleRenamePlaylist(
      playlistId, { Title: newTitle },
      () => toast.success("Playlist renommée"),
      (err) => {
				if (err) toast.error(err ?? "Erreur lors du renommage");
			},
    );
    setEditingId(null);
    setEditingTitle("");
    setOldTitle("");
  }

  function handleDelete(playlistId) {
    removePlaylist(playlistId);

    let deleteErr = false;
    handleDeletePlaylist(
      playlistId,
      (err) => {
				if (!err) return;
				deleteErr = true;
				toast.error(err ?? "Erreur lors de la suppression");
			},
    ).then(() => {
			if (!deleteErr) toast.success("Playlist supprimée");
		});
  }

  function handleRemoveTrack(playlistId, trackId) {
    const playlist = playlists.find((p) => p.ID === playlistId);
    if (!playlist) return;
    updatePlaylist({
      ...playlist,
      Contents: (playlist.Contents ?? []).filter((c) => c.TrackID !== trackId),
    });

    let removeErr = false;
    handleRemoveTrackFromPlaylist(
      playlistId, trackId,
      (err) => {
				if (!err) return;
				removeErr = true;
				toast.error(err ?? "Erreur lors de la suppression");
			},
    ).then(() => {
			if (!removeErr) toast.success("Titre retiré de la playlist");
		});
  }

  function handleDrop(playlistId, dropIndex) {
    if (dragIndex === null || dragIndex === dropIndex) return;
    const playlist = playlists.find((p) => p.ID === playlistId);
    if (!playlist) return;
    const contents = [...(playlist.Contents ?? [])];
    const [moved] = contents.splice(dragIndex, 1);
    contents.splice(dropIndex, 0, moved);
    setDragIndex(null);
    updatePlaylist({ ...playlist, Contents: contents });
    const reordered = contents.map((c, idx) => ({
      TrackID: c.TrackID,
      Position: idx + 1,
    }));

		let reorderErr = false;
    handleReorderPlaylistTracks(
      playlistId, reordered,
      (err) => { 
				if (!err) return;
				reorderErr = true;
				toast.error(err ?? "Erreur lors du réordonnancement");
			},
    ).then(() => {
			if (!reorderErr) toast.success("Ordre mis à jour");
		});
  }

  return (
    <>
			<div className="space-y-4">
				<h1 className="text-2xl font-bold">Playlists de {user?.Username}</h1>
				<p className="text-whiteW_50 text-sm">
					{playlists.length === 0
						? "Vous n'avez pas encore de playlist enregistrée."
						: "Vous pouvez renommer et supprimer vos titres et vos playlists. Vous pouvez aussi réorganiser les titres d'une playlist en les glissant-déposant."}
				</p>
				<div className="space-y-2">
					{playlists.map((playlist) => (
						<div
							key={playlist.ID}
							className="rounded-card bg-whiteW_20 text-whiteW overflow-hidden"
						>
							{/* En-tête de la playlist */}
							<div className="flex items-center justify-between px-4 py-3">
								<PlaylistCover playlist={playlist} size={40} className="mr-3" />
								{editingId === playlist.ID ? (
									<input
										autoFocus
										title="Renommer la playlist"
										value={editingTitle}
										maxLength={120}
										onChange={(e) => setEditingTitle(e.target.value)}
										onKeyDown={(e) => {
											if (e.key === "Enter") handleRenameConfirm(playlist.ID);
											if (e.key === "Escape") setEditingId(null);
										}}
										onBlur={() => handleRenameConfirm(playlist.ID)}
										className="bg-transparent border-b border-whiteW outline-none text-sm flex-1 mr-4"
									/>
								) : (
									<button
										className="text-sm font-semibold hover:underline text-left flex-1 truncate min-w-0 min-h-[24px]"
										onClick={() => navigate(`/playlist/${playlist.ID}`)}
									>
										{playlist.Title}
									</button>
								)}
								<div className="flex gap-2">
									<Button
										variant="iconCircle"
										title={expandedPlaylistID === playlist.ID ? "Réduire" : "Développer"}
										className="text-whiteW"
										onClick={() =>
											setExpandedPlaylistID(
												expandedPlaylistID === playlist.ID ? null : playlist.ID,
											)
										}
									>
										{expandedPlaylistID === playlist.ID ? (
											<ChevronUp size={16} />
										) : (
											<ChevronDown size={16} />
										)}
									</Button>
									<Button
										variant="iconCircle"
										title="Renommer"
										className="text-whiteW"
										onClick={() => handleRename(playlist)}
									>
										<Pencil size={16} />
									</Button>
									<Button
										variant="iconCircle"
										title="Supprimer la playlist"
										onClick={() => setConfirmDeletePlaylist(playlist)}
									>
										<Trash2 size={16} className="text-redW" />
									</Button>
								</div>
							</div>

							{/* Liste des tracks déroulée */}
							{expandedPlaylistID === playlist.ID && (
								<div className="border-t border-whiteW_20 px-4 py-2 space-y-1">
									{(playlist.Contents ?? []).map((content, index) => (
										<div
											key={content.TrackID}
											draggable
											onDragStart={() => setDragIndex(index)}
											onDragOver={(e) => e.preventDefault()}
											onDrop={() => handleDrop(playlist.ID, index)}
											className={`group flex items-center py-1 px-2 rounded-lg cursor-grab active:cursor-grabbing hover:bg-whiteW_10 ${dragIndex === index ? "opacity-40" : ""}`}
										>
											<GripVertical
												size={14}
												className="text-whiteW_50 shrink-0 mr-2"
											/>
											<span className="text-sm text-whiteW_70 w-5 shrink-0">
												{index + 1}
											</span>
											<span className="text-sm flex-1 mx-3">
												{content.Track.Title}
											</span>
											<Button
												variant="iconCircle"
												title="Retirer de la playlist"
												className="invisible group-hover:visible"
												onClick={() =>
													handleRemoveTrack(playlist.ID, content.TrackID)
												}
											>
												<Trash2 size={14} className="text-redW" />
											</Button>
										</div>
									))}
								</div>
							)}
						</div>
					))}
				</div>
			</div>

			<Dialog.Root
					open={confirmDeletePlaylist !== null}
					onOpenChange={() => setConfirmDeletePlaylist(null)}
      >
        <Dialog.Portal>
          <Dialog.Overlay className="fixed inset-0 z-[9999] bg-blackW/50 backdrop-blur-sm" />
          <Dialog.Content className="fixed left-1/2 top-1/2 z-[9999] -translate-x-1/2 -translate-y-1/2 bg-blackW text-whiteW border border-whiteW_20 rounded-card p-6 space-y-4 w-80">
            <Dialog.Title className="text-lg font-semibold">
              Supprimer la playlist "{confirmDeletePlaylist?.Title}" ?
            </Dialog.Title>
            <Dialog.Description className="text-sm text-whiteW_50">
              Cette action est irréversible.
            </Dialog.Description>
            <div className="flex justify-end gap-2">
              <Button
                variant="returnBT"
                onClick={() => setConfirmDeletePlaylist(null)}
              >
                Annuler
              </Button>
              <Button
                variant="danger"
                onClick={() => {
                  handleDelete(confirmDeletePlaylist.ID);
                  setConfirmDeletePlaylist(null);
                }}
              >
                Supprimer
              </Button>
            </div>
          </Dialog.Content>
        </Dialog.Portal>
      </Dialog.Root>
    </>
  );
}
