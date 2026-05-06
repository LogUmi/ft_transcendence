import { useState, useEffect } from "react";
import { TrackLink } from "../ui/components/TrackLink.jsx";
import { CreatorLinks } from "../ui/components/CreatorLinks.jsx";
import { CoverPlay } from "../ui/components/CoverPlay.jsx";
import { usePlayerStore } from "../store/playerStore.js";
import { handleGetHistoryLogs } from "../services/APIFRONT/handle.jsx";

const FILTERS = [
  { label: "Musique",  value: "music" },
  { label: "Podcasts", value: "podcast" },
];

export function History() {
  const [logs, setLogs] = useState([]);
  const [filter, setFilter] = useState("music");
  const currentTrackId = usePlayerStore((state) => state.currentTrack?.ID);

  useEffect(() => {
    handleGetHistoryLogs((data) => setLogs(data ?? []));
  }, [currentTrackId]);

  const filteredLogs = logs.filter((log) => !filter || log.Track?.Type === filter);

  return (
    <div className="space-y-4">
      <h1 className="text-2xl font-semibold text-whiteW">Récemment joués</h1>

      <div className="flex gap-8 border-b border-whiteW_20 pb-0">
        {FILTERS.map(({ label, value }) => (
          <button
            key={value}
            onClick={() => setFilter(filter === value ? null : value)}
            className={`pb-2 text-md transition-colors relative ${
              filter === value ? "text-whiteW font-semibold" : "text-whiteW_70 hover:text-whiteW_50"
            }`}
          >
            {label}
            {filter === value && (
              <span className="absolute -bottom-[1px] left-0 block h-[4px] w-full bg-redW rounded-t" />
            )}
          </button>
        ))}
      </div>

      {filteredLogs.length === 0 && (
        <p className="text-whiteW_50 text-sm">Aucun élément à afficher.</p>
      )}
      <table className="w-full text-sm">
        <tbody>
          {filteredLogs.map((log) => {
            const track = log.Track;
            const isActive = currentTrackId === track.ID;
            return (
              <tr
                key={log.ID}
                className={`group transition-colors hover:bg-whiteW_10 ${isActive ? "text-redWHv" : "text-whiteW"}`}
              >
                <td className="pl-2 pr-2 w-10">
                  <CoverPlay track={track} size={36} />
                </td>

                <td className="px-2">
                  <div className="flex flex-wrap items-baseline gap-x-2">
                    <TrackLink
                      track={track}
                      className="font-semibold hover:underline"
                    />
                    <CreatorLinks
                      creator={track.Creator}
                      className="text-xs text-whiteW_50"
                    />
                  </div>
                </td>

                <td className="py-1 pr-2 text-right text-whiteW_50 whitespace-nowrap">
                  {new Date(
                    log.LastStartedAt ?? log.UpdatedAt,
                  ).toLocaleDateString("fr-FR", {
                    day: "2-digit",
                    month: "2-digit",
                    year: "numeric",
                  })}
                </td>
              </tr>
            );
          })}
        </tbody>
      </table>
    </div>
  );
}

export default History;
