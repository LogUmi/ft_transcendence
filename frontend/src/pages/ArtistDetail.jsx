import { useNavigate, useParams } from "react-router-dom";
import { useState, useEffect } from "react";
import { Button } from "../ui/primitives/Button";
import { TrackList } from "../ui/components/TrackList";
import { gradientFromId } from "../services/utils.js";
import {
  handleGetCreator,
  handleGetCreatorTracks,
  handleGetCreatorCollections,
} from "../services/APIFRONT/handle.jsx";
import { Link } from "react-router-dom";

export function ArtistDetail() {
  const { creatorID } = useParams();
  const navigate = useNavigate();
  const [creator, setCreator] = useState(null);
  const [tracks, setTracks] = useState([]);
  const [collections, setCollections] = useState([]);

  useEffect(() => {
    handleGetCreator(Number(creatorID), setCreator);
  }, [creatorID]);

  useEffect(() => {
    if (!creator) return;
    handleGetCreatorTracks(creator.ID, (tracks) => setTracks(tracks ?? []));
    handleGetCreatorCollections(
			creator.ID,
			(cols) => setCollections(cols ?? []),
    );
  }, [creator]);

  if (!creator) return null;

  return (
    <div className="space-y-8">
      <Button variant="returnBT" onClick={() => navigate(-1)}>
        ← Retour
      </Button>

      {/* Header artiste */}
      <div className="flex gap-6 rounded-card bg-blackW text-whiteW p-6">
        {creator.CoverURL ? (
          <img
            src={creator.CoverURL}
            alt={`Photo de ${creator.Name}`}
            className="h-40 w-40 shrink-0 rounded-card object-cover"
          />
        ) : (
          <div
            className={`h-40 w-40 shrink-0 rounded-card bg-gradient-to-br ${gradientFromId(creator.ID)}`}
          />
        )}

        <div className="flex flex-col justify-center gap-2">
          <p className="text-xs font-semibold uppercase tracking-widest text-whiteW_50">
            Artiste
          </p>
          <h1 className="text-3xl font-bold font-display">{creator.Name}</h1>
          <p className="text-sm text-whiteW_50">
            {collections.length} album{collections.length > 1 ? "s" : ""}
          </p>
        </div>
      </div>

      {/* Chansons les plus écoutées */}
      {tracks.length > 0 && (
        <div className="space-y-4">
          <h2 className="text-xl font-semibold">Chansons les plus écoutées</h2>
          <div className="max-h-[340px] overflow-y-auto rounded-card scrollbar-thin scrollbar-thumb-whiteW_20 scrollbar-track-transparent">
            <TrackList tracks={tracks} />
          </div>
        </div>
      )}

      {/* Albums */}
      {collections.length > 0 && (
        <div className="space-y-4">
          <h2 className="text-xl font-semibold">Albums</h2>
          <div className="flex flex-wrap gap-6">
            {collections.map((col) => (
              <Link
                key={col.ID}
                to={`/collections/${col.ID}`}
                className="group flex flex-col gap-2 w-[120px]"
              >
                <div
                  className={`aspect-square w-full rounded-[15px] bg-gradient-to-br ${gradientFromId(col.ID)}`}
                />
                <span className="text-sm font-semibold truncate group-hover:underline">
                  {col.Name}
                </span>
              </Link>
            ))}
          </div>
        </div>
      )}
    </div>
  );
}

export default ArtistDetail;
