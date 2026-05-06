import { useState, useEffect, useMemo, useRef } from "react";
import { Link } from "react-router-dom";
import { Search, X } from "lucide-react";
import { gradientFromId } from "../services/utils.js";
import { handleGetCreators } from "../services/APIFRONT/handle.jsx";

function CreatorCard({ creator }) {
  return (
    <Link
      to={`/artists/${creator.ID}`}
      className="group flex flex-col items-center gap-2 rounded-xl p-3 hover:bg-whiteW_10 transition-colors"
    >
      {creator.CoverURL ? (
        <img
          src={creator.CoverURL}
          alt={creator.Name}
          className="h-28 w-28 rounded-full object-cover ring-2 ring-transparent group-hover:ring-whiteW_20 transition-all"
        />
      ) : (
        <div className={`h-28 w-28 rounded-full bg-gradient-to-br ${gradientFromId(creator.ID)} ring-2 ring-transparent group-hover:ring-whiteW_20 transition-all`} />
      )}
      <span className="text-xs font-semibold group-hover:underline truncate w-full text-center">
        {creator.Name}
      </span>
    </Link>
  );
}

function AlphaIndex({ activeLetters, onClickLetter }) {
  const ALL = "ABCDEFGHIJKLMNOPQRSTUVWXYZ#".split("");
  return (
    <div className="flex flex-col items-center gap-0.5 select-none">
      {ALL.map((l) => {
        const active = activeLetters.includes(l);
        return (
          <button
            key={l}
            onClick={() => active && onClickLetter(l)}
            className={`text-[10px] font-bold w-5 h-5 flex items-center justify-center rounded transition-colors
              ${active
                ? "text-whiteW hover:bg-whiteW_20 cursor-pointer"
                : "text-whiteW_30 cursor-default"
              }`}
          >
            {l}
          </button>
        );
      })}
    </div>
  );
}

export function Artist() {
  const [creators, setCreators] = useState([]);
  const [error, setError] = useState("");
  const [query, setQuery] = useState("");
  const sectionRefs = useRef({});
  const inputRef = useRef(null);

  useEffect(() => {
    handleGetCreators((data) => setCreators(data ?? []), setError);
  }, []);

  // Filtrage local + groupement alphabétique
  const groups = useMemo(() => {
    const q = query.trim().toLowerCase();
    const filtered = q
      ? creators.filter((c) => c.Name?.toLowerCase().includes(q))
      : creators;

    if (q) return [{ letter: null, items: filtered }];

    const map = {};
    [...filtered].sort((a, b) => (a.Name ?? "").localeCompare(b.Name ?? "", "fr", { sensitivity: "base" }))
      .forEach((c) => {
        const first = c.Name?.[0]?.toUpperCase() ?? "#";
        const key = /[A-Z]/.test(first) ? first : "#";
        if (!map[key]) map[key] = [];
        map[key].push(c);
      });

    return Object.entries(map)
      .sort(([a], [b]) => a === "#" ? 1 : b === "#" ? -1 : a.localeCompare(b))
      .map(([letter, items]) => ({ letter, items }));
  }, [creators, query]);

  const activeLetters = groups.map((g) => g.letter).filter(Boolean);

  function scrollToLetter(letter) {
    sectionRefs.current[letter]?.scrollIntoView({ behavior: "smooth", block: "start" });
  }

  return (
    <div className="flex gap-4 h-full">
      {/* Zone principale */}
      <div className="flex-1 min-w-0 space-y-6 overflow-y-auto pr-2">
        <div className="flex items-center justify-between gap-4">
          <h1 className="text-3xl font-bold shrink-0">Artistes</h1>

          {/* Barre de recherche locale */}
          <div className="relative max-w-xs w-full">
            <Search className="absolute left-2.5 top-1/2 -translate-y-1/2 h-4 w-4 text-whiteW_50" />
            <input
              ref={inputRef}
              title="Filtrer les artistes"
              value={query}
              onChange={(e) => setQuery(e.target.value)}
              placeholder="Filtrer les artistes…"
              className="w-full rounded-full bg-whiteW_10 py-1.5 pl-8 pr-8 text-sm text-whiteW placeholder-whiteW_50 outline-none focus:ring-1 focus:ring-whiteW_30"
            />
            {query && (
              <button
                title="Vider le champ"
                onClick={() => { setQuery(""); inputRef.current?.focus(); }}
                className="absolute right-2.5 top-1/2 -translate-y-1/2 text-whiteW_50 hover:text-whiteW"
              >
                <X size={14} />
              </button>
            )}
          </div>
        </div>

        {error && <p className="text-redW text-sm">{error}</p>}

        {groups.length === 0 && (
          <p className="text-whiteW_50 text-sm pt-6 text-center">Aucun artiste trouvé pour « {query} »</p>
        )}

        {groups.map(({ letter, items }) => (
          <div
            key={letter ?? "search"}
            ref={(el) => { if (letter) sectionRefs.current[letter] = el; }}
          >
            {letter && (
              <div className="flex items-center gap-3 mb-3 sticky top-0 z-10 bg-blackW/80 backdrop-blur-sm py-1">
                <span className="text-2xl font-black text-whiteW">{letter}</span>
                <div className="flex-1 h-px bg-whiteW_20" />
              </div>
            )}
            <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-4">
              {items.map((creator) => (
                <CreatorCard key={creator.ID} creator={creator} />
              ))}
            </div>
          </div>
        ))}
      </div>

      {/* Index alphabétique — masqué quand on cherche */}
      {!query && (
        <div className="sticky top-0 self-start pt-16">
          <AlphaIndex
            activeLetters={activeLetters}
            onClickLetter={scrollToLetter}
          />
        </div>
      )}
    </div>
  );
}

export default Artist;
