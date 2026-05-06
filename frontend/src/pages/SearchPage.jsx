import { useState, useEffect, useRef, useMemo } from "react";
import { Link, useNavigate } from "react-router-dom";
import GenreLinks from "../ui/components/GenreLinks.jsx";
import { User, Search, Play, Pause } from "lucide-react";
import { usePlayerStore } from "../store/playerStore.js";
import { SearchResults } from "../ui/components/SearchResults.jsx";
import { useSearchStore } from "../store/searchStore.js";
import {
  handleSearchTracks,
  handleSearchUsers,
  handleSearchCreators,
  handleGetCollections,
  handleGetCollection,
} from "../services/APIFRONT/handle.jsx";
import { gradientFromId, DEFAULT_ARTIST_GRADIENT } from "../services/utils.js";

const limittab = 25000;

/* ── Top album card (plus grande) ── */
function AlbumTopCard({ collection, tracks, onClick }) {
  const { play, currentTrack, isPlaying, toggle } = usePlayerStore();
  const isAlbumActive = tracks.some((t) => t.ID === currentTrack?.ID);

  const handleCoverClick = (e) => {
    e.stopPropagation();
    if (tracks.length === 0) return;
    if (isAlbumActive) toggle();
    else play(tracks[0], tracks, 0);
  };

  return (
    <div
      className="group flex items-center gap-3 rounded-xl bg-whiteW_10 px-3 py-2.5 mb-2 cursor-pointer hover:bg-whiteW/10 transition-colors"
      onClick={onClick}
    >
      <div className="relative shrink-0" onClick={handleCoverClick}>
        {collection.CoverURL ? (
          <img
            src={collection.CoverURL}
            alt={collection.Name}
            className="h-14 w-14 rounded object-cover"
          />
        ) : (
          <div
            className={`h-14 w-14 rounded bg-gradient-to-br ${gradientFromId(collection.ID)}`}
          />
        )}
        <div className="absolute inset-0 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity rounded">
          <button
						title={isAlbumActive && isPlaying ? "Pause" : "Lecture"}
						className="flex h-6 w-6 items-center justify-center rounded-full bg-redWHv text-white"
					>
            {isAlbumActive && isPlaying ? (
              <Pause size={12} />
            ) : (
              <Play size={12} />
            )}
          </button>
        </div>
      </div>
      <div className="min-w-0">
        <p className="text-sm font-bold text-whiteW truncate">
          {collection.Name}
        </p>
        <p className="text-xs text-whiteW_50">
          {tracks.length} titre{tracks.length > 1 ? "s" : ""}
        </p>
      </div>
    </div>
  );
}

/* ── Card utilisateur ── */
function UserCard({ user }) {
  return (
    <Link
      to={`/profileUsers/${user.ID}`}
      className="flex items-center gap-2 rounded-lg px-2 py-1.5 hover:bg-whiteW_10 transition-colors"
    >
      {user.AvatarURL ? (
        <img
          src={user.AvatarURL}
          alt={user.Username}
          className="h-8 w-8 rounded-full object-cover shrink-0"
        />
      ) : (
        <div className="h-8 w-8 rounded-full bg-whiteW_20 flex items-center justify-center shrink-0">
          <User size={14} className="text-whiteW" />
        </div>
      )}
      <div className="min-w-0">
        <p className="text-xs font-semibold text-whiteW truncate">
          {user.Username}
        </p>
        <p className="text-[11px] text-whiteW_50">Utilisateur</p>
      </div>
    </Link>
  );
}

/* ── Card artiste ── */
function ArtistCard({ creator }) {
  return (
    <Link
      to={`/artists/${creator.ID}`}
      className="flex items-center gap-2 rounded-lg px-2 py-1.5 hover:bg-whiteW_10 transition-colors"
    >
      {creator.CoverURL ? (
        <img
          src={creator.CoverURL}
          alt={creator.Name}
          className="h-9 w-9 rounded-full object-cover shrink-0"
        />
      ) : (
        <div
          className={`h-9 w-9 rounded-full bg-gradient-to-br ${DEFAULT_ARTIST_GRADIENT} shrink-0`}
        />
      )}
      <div className="min-w-0">
        <p className="text-xs font-semibold text-whiteW truncate">
          {creator.Name}
        </p>
        <p className="text-[11px] text-whiteW_50">Artiste</p>
      </div>
    </Link>
  );
}

/* ── Card album ── */
function AlbumCard({ collection, tracks, onClick }) {
  const { play, currentTrack, isPlaying, toggle } = usePlayerStore();
  const isAlbumActive = tracks.some((t) => t.ID === currentTrack?.ID);

  const handleCoverClick = (e) => {
    e.stopPropagation();
    if (tracks.length === 0) return;
    if (isAlbumActive) toggle();
    else play(tracks[0], tracks, 0);
  };

  return (
    <div
      className="group flex items-center gap-2 rounded-lg px-2 py-1.5 hover:bg-whiteW_10 transition-colors cursor-pointer"
      onClick={onClick}
    >
      <div className="relative shrink-0" onClick={handleCoverClick}>
        {collection.CoverURL ? (
          <img
            src={collection.CoverURL}
            alt={collection.Name}
            className="h-9 w-9 rounded object-cover"
          />
        ) : (
          <div
            className={`h-9 w-9 rounded bg-gradient-to-br ${gradientFromId(collection.ID)}`}
          />
        )}
        <div className="absolute inset-0 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity rounded">
          <button
						title={isAlbumActive && isPlaying ? "Pause" : "Lecture"}
						className="flex h-6 w-6 items-center justify-center rounded-full bg-redWHv text-white"
					>
            {isAlbumActive && isPlaying ? (
              <Pause size={10} />
            ) : (
              <Play size={10} />
            )}
          </button>
        </div>
      </div>
      <div className="min-w-0">
        <p className="text-xs font-semibold text-whiteW truncate">
          {collection.Name}
        </p>
        <p className="text-[11px] text-whiteW_50">
          {tracks.length} titre{tracks.length > 1 ? "s" : ""}
        </p>
      </div>
    </div>
  );
}

/* ── Colonne générique avec scroll ── */
function SearchColumn({ title, children }) {
  return (
    <section className="flex flex-col min-w-0">
      <h2 className="text-base font-bold mb-2 shrink-0">{title}</h2>
      <div className="overflow-y-auto max-h-[30vh] flex flex-col gap-0.5">
        {children}
      </div>
    </section>
  );
}

export function SearchPage() {
  const navigate = useNavigate();
  const { query, setQuery } = useSearchStore();
  const [tracks, setTracks] = useState([]);
  const [podcasts, setPodcasts] = useState([]);
  const [users, setUsers] = useState([]);
  const [creators, setCreators] = useState([]);
  const [genres, setGenres] = useState([]);
  const [allCollections, setAllCollections] = useState([]);
  const [tracksByCollection, setTracksByCollection] = useState({});
  const [loading, setLoading] = useState(false);
  const [tracksLimit, setTracksLimit] = useState(50);
  const debounceRef = useRef(null);
  const mobileInputRef = useRef(null);

  useEffect(() => {
    handleGetCollections((data) => setAllCollections(data ?? []));
    mobileInputRef.current?.focus();
    return () => setQuery("");
  }, []);

  useEffect(() => {
    if (!query.trim()) {
      setTracks([]);
      setPodcasts([]);
      setUsers([]);
      setCreators([]);
      setGenres([]);
      setTracksLimit(50);
      return;
    }
    clearTimeout(debounceRef.current);
    debounceRef.current = setTimeout(() => {
      setLoading(true);
      setTracksLimit(50);
      Promise.all([
        handleSearchTracks(query, "music", (data) => setTracks(data ?? [])),
        handleSearchTracks(query, undefined, (data) => {
          const seen = new Set();
          const q = query.toLowerCase();
          setGenres(
            (data ?? [])
              .filter(
                (t) =>
                  t.Genre?.ID &&
                  t.Genre.Name.toLowerCase().includes(q) &&
                  !seen.has(t.Genre.ID) &&
                  seen.add(t.Genre.ID),
              )
              .map((t) => t.Genre)
              .slice(0, limittab),
          );
        }),
        handleSearchTracks(query, "podcast", (data) =>
          setPodcasts((data ?? []).slice(0, limittab)),
        ),
        handleSearchUsers(query, (data) => setUsers((data ?? []).slice(0, 5))),
        handleSearchCreators(query, (data) =>
          setCreators((data ?? []).slice(0, limittab)),
        ),
      ]).finally(() => setLoading(false));
    }, 300);
    return () => clearTimeout(debounceRef.current);
  }, [query]);

  const q = query.toLowerCase().trim();
  const collections = useMemo(
    () =>
      q
        ? allCollections
            .filter((c) => c.Name.toLowerCase().includes(q))
            .slice(0, 20)
        : [],
    [allCollections, q],
  );

  useEffect(() => {
    if (collections.length === 0) return;
    collections.forEach((c) => {
      if (tracksByCollection[c.ID] !== undefined) return;
      handleGetCollection(c.ID, (full) => {
        if (!full) return;
        setTracksByCollection((prev) => ({
          ...prev,
          [c.ID]: full.Tracks ?? [],
        }));
      });
    });
  }, [collections]);

  return (
    <>
      {/* Barre de recherche mobile — sticky en haut, cachée sur desktop */}
      <div className="sm:hidden sticky top-0 z-10 bg-blackW pt-1 pb-3">
        <div className="relative">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-whiteW_60" />
          <input
            ref={mobileInputRef}
            className="w-full rounded-full bg-whiteW/10 py-2 pl-9 pr-3 text-sm text-whiteW placeholder-whiteW_60 outline-none focus:ring-1 focus:ring-whiteW/30"
            placeholder="Rechercher…"
            value={query}
            onChange={(e) => {
              setQuery(e.target.value);
              if (!e.target.value.trim()) navigate(-1);
            }}
            onKeyDown={(e) =>
              e.key === "Enter" && mobileInputRef.current?.blur()
            }
          />
        </div>
      </div>

      {loading ? (
        <div className="flex items-center justify-center h-40 text-whiteW_50 text-sm">
          Recherche…
        </div>
      ) : !q ? (
        <div className="flex items-center justify-center h-40 text-whiteW_50 text-sm">
          Recherchez un morceau, un artiste ou un album…
        </div>
      ) : (
        <div className="space-y-6">
          {/* ── Utilisateurs ── */}
          {users.length > 0 && (
            <section>
              <h2 className="text-base font-bold mb-2">Utilisateurs</h2>
              <div className="flex flex-wrap gap-1">
                {users.map((u) => (
                  <UserCard key={u.ID} user={u} />
                ))}
              </div>
            </section>
          )}

          {/* ── Grille (sections affichées seulement si elles ont des résultats) ── */}
          {tracks.length > 0 ||
          podcasts.length > 0 ||
          collections.length > 0 ||
          creators.length > 0 ||
          genres.length > 0 ? (
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-x-8 gap-y-6">
              {tracks.length > 0 && (
                <SearchColumn title="Musiques">
                  <SearchResults
                    query={query}
                    tracks={tracks.slice(0, tracksLimit)}
                  />
                  {tracks.length > tracksLimit && (
                    <button
                      className="mt-1 text-xs text-whiteW_50 hover:text-whiteW transition-colors text-left px-2"
                      onClick={() => setTracksLimit((n) => n + 50)}
                    >
                      Voir plus ({tracks.length - tracksLimit} restants)
                    </button>
                  )}
                </SearchColumn>
              )}

              {podcasts.length > 0 && (
                <SearchColumn title="Podcasts">
                  <SearchResults query={query} tracks={podcasts} />
                </SearchColumn>
              )}

              {collections.length > 0 && (
                <SearchColumn title="Albums">
                  <AlbumTopCard
                    collection={collections[0]}
                    tracks={tracksByCollection[collections[0].ID] ?? []}
                    onClick={() =>
                      navigate(`/collections/${collections[0].ID}`)
                    }
                  />
                  {collections.slice(1).map((c) => (
                    <AlbumCard
                      key={c.ID}
                      collection={c}
                      tracks={tracksByCollection[c.ID] ?? []}
                      onClick={() => navigate(`/collections/${c.ID}`)}
                    />
                  ))}
                </SearchColumn>
              )}

              {creators.length > 0 && (
                <SearchColumn title="Artistes">
                  {creators.map((c) => (
                    <ArtistCard key={c.ID} creator={c} />
                  ))}
                </SearchColumn>
              )}

              {genres.length > 0 && (
                <SearchColumn title="Genres">
                  {genres.map((g) => (
                    <div
                      key={g.ID}
                      className="flex items-center gap-2 rounded-lg px-2 py-1.5 hover:bg-whiteW_10 transition-colors"
                    >
                      <div
                        className={`h-9 w-9 rounded-full bg-gradient-to-br ${gradientFromId(g.ID)} shrink-0`}
                      />
                      <div className="min-w-0">
                        <GenreLinks
                          genre={g}
                          className="text-xs font-semibold text-whiteW truncate"
                        />
                        <p className="text-[11px] text-whiteW_50">Genre</p>
                      </div>
                    </div>
                  ))}
                </SearchColumn>
              )}
            </div>
          ) : (
            users.length === 0 && (
              <p className="text-sm text-blackW_60 text-center py-10">
                Aucun résultat pour « {query} »
              </p>
            )
          )}
        </div>
      )}
    </>
  );
}

export default SearchPage;
