import { useNavigate, useParams, useSearchParams } from "react-router-dom";
import { useState, useEffect } from "react";
import { Button } from "../ui/primitives/Button";
import { GenreHeader } from "../ui/components/GenreHeader";
import { TrackList } from "../ui/components/TrackList";
import { handleGetGenre } from "../services/APIFRONT/handle.jsx";

export function Genre() {
  const { id } = useParams();
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();
  const genreName = searchParams.get("name") ?? "";
  const [genre, setGenre] = useState(
    genreName ? { ID: Number(id), Name: genreName, CoverURL: null } : null,
  );
  const [tracks, setTracks] = useState([]);

  useEffect(() => {
    handleGetGenre(Number(id), (data) => {
      if (!data) return;
      setGenre(data);
      setTracks(data.Tracks ?? []);
    });
  }, [id]);

  if (!genre) return null;

  const totalSeconds = tracks.reduce((sum, t) => sum + t.DurationSeconds, 0);

  return (
    <div className="space-y-4">
      <Button variant="returnBT" onClick={() => navigate(-1)}>
        ← Retour
      </Button>

      <GenreHeader
        coverUrl={genre.CoverURL}
        id={genre.ID}
        name={genre.Name}
        trackCount={tracks.length}
        totalSeconds={totalSeconds}
      />

      <TrackList tracks={tracks} />
    </div>
  );
}

export default Genre;
