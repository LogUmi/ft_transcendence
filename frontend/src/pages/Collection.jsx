import { useNavigate, useParams } from "react-router-dom";
import { useState, useEffect } from "react";
import { Button } from "../ui/primitives/Button";
import { CollectionHeader } from "../ui/components/CollectionHeader";
import { TrackList } from "../ui/components/TrackList";
import { handleGetCollection } from "../services/APIFRONT/handle.jsx";

export function Collection() {
  const { id } = useParams();
  const navigate = useNavigate();
  const [collection, setCollection] = useState(null);

  useEffect(() => {
    handleGetCollection(Number(id), setCollection);
  }, [id]);

  if (!collection) return null;

  const totalSeconds = collection.Tracks.reduce(
    (sum, t) => sum + t.DurationSeconds,
    0,
  );

  return (
    <div className="space-y-4">
      <Button variant="returnBT" onClick={() => navigate(-1)}>
        ← Retour
      </Button>

      <CollectionHeader
        coverUrl={collection.CoverURL}
        id={collection.ID}
        name={collection.Name}
        creator={collection.Tracks[0]?.Creator?.Name ?? null}
        trackCount={collection.Tracks.length}
        totalSeconds={totalSeconds}
      />

      <TrackList tracks={collection.Tracks} />
    </div>
  );
}

export default Collection;
