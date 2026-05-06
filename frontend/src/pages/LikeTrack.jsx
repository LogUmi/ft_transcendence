import { useState, useEffect } from "react";
import { TrackList } from "../ui/components/TrackList.jsx";
import { handleGetUserLikes } from "../services/APIFRONT/handle.jsx";
import { useLikeStore } from "../store/likeStore.js";

const FILTERS = [
  { label: "Musique", value: "music" },
  { label: "Podcasts", value: "podcast" },
];

export default function LikeTrack() {
  const [tracks, setTracks] = useState([]);
  const [filter, setFilter] = useState("music");
  const likedIds = useLikeStore((state) => state.likedIds);
  const setLikedIds = useLikeStore((state) => state.setLikedIds);

  useEffect(() => {
    handleGetUserLikes(function (UserLikeTable) {
      const tracksInfo = [];
      const ids = [];
      for (let i = 0; i < (UserLikeTable ?? []).length; i++) {
        tracksInfo.push(UserLikeTable[i].Track);
        ids.push(UserLikeTable[i].TrackID);
      }
      setTracks(tracksInfo);
      setLikedIds(ids);
    });
  }, []);

  const likedTracks = tracks.filter((t) => likedIds.includes(t.ID));
  const filtered = likedTracks.filter((t) => !filter || t.Type === filter);

  return (
    <div className="flex flex-col gap-4">
      <h1 className="text-2xl font-bold">Liste des likes</h1>

      <div className="flex gap-8 border-b border-whiteW_20 pb-0">
        {FILTERS.map(({ label, value }) => (
          <button
            key={value}
            onClick={() => setFilter(filter === value ? null : value)}
            className={`pb-2 text-md transition-colors relative ${
              filter === value
                ? "text-whiteW font-semibold"
                : "text-whiteW_70 hover:text-whiteW_50"
            }`}
          >
            {label}
            {filter === value && (
              <span className="absolute -bottom-[1px] left-0 block h-[4px] w-full bg-redW rounded-t" />
            )}
          </button>
        ))}
      </div>

      {filtered.length === 0 && (
        <p className="text-whiteW_50 text-sm">
          Vous n'avez pas encore atribue de likes. Au boulot....
        </p>
      )}
      {filtered.length > 0 && (
        <TrackList tracks={filtered} showLikedAlways={false} />
      )}
    </div>
  );
}
