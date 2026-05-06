import { useNavigate, useParams } from "react-router-dom";
import { useEffect } from "react";
import { Button } from "../ui/primitives/Button.jsx";
import { CollectionHeader } from "../ui/components/CollectionHeader.jsx";
import { TrackList } from "../ui/components/TrackList.jsx";
import { usePlaylistStore } from "../store/playlistStore.js";
import { handleGetPlaylist } from "../services/APIFRONT/handle.js";

export function PlaylistPage() {
  const { playlistID } = useParams();
  const navigate = useNavigate();
  const storedPlaylist = usePlaylistStore((state) =>
    state.playlists.find((p) => p.ID === Number(playlistID)),
  );
  const updatePlaylist = usePlaylistStore((state) => state.updatePlaylist);

  useEffect(() => {
    handleGetPlaylist(Number(playlistID), (data) => {
      if (data) updatePlaylist(data);
    });
  }, [playlistID]);

  if (!storedPlaylist) return null;

  const contents = storedPlaylist.Contents ?? [];

  // Extrait uniquement les Track de chaque PlaylistContent pour les passer à TrackList
  let tracks = [];
  for (var i = 0; i < contents.length; i++) {
    if (contents[i].Track) {
      tracks.push(contents[i].Track);
    }
  }

  let totalSeconds = 0;
  for (const content of contents) {
    totalSeconds += content.Track.DurationSeconds;
  }

  return (
    <div className="space-y-4">
      <Button variant="returnBT" onClick={() => navigate(-1)}>
        ← Retour
      </Button>

      <CollectionHeader
        id={Number(storedPlaylist.ID)}
        name={storedPlaylist.Title}
        trackCount={contents.length}
        totalSeconds={totalSeconds}
      />

      <TrackList tracks={tracks} />
    </div>
  );
}

export default PlaylistPage;
