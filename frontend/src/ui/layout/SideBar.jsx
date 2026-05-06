/* eslint-disable react/prop-types */
import { useEffect, useCallback, useRef, useState } from "react";
import { useNavigate, useLocation, Link } from "react-router-dom";

import { UserSidebarButton } from "./sidebar/UserSidebarButton";
import TitleSB from "./sidebar/TitleSB";
import SectionSB from "./sidebar/SectionSB";
import NavSidebarItem from "./sidebar/NavSidebarItem";
import PlaylistsList from "./sidebar/PlaylistsList.jsx";
import { useAuthStore } from "../../store/authStore";
import { useSearchStore } from "../../store/searchStore";
import { usePlaylistStore } from "../../store/playlistStore";
import { useUIStore } from "../../store/uiStore";
import {
  handleGetPlaylists,
  handleGetCollections,
  handleSearchCreators,
  handleSearchTracks,
  handleSearchUsers,
} from "../../services/APIFRONT/handle.jsx";
import {
  DEFAULT_ARTIST_GRADIENT,
  gradientFromId,
  resolveUrl,
} from "../../services/utils.js";

import {
  LayoutGrid,
  User,
  Heart,
  Library,
  History,
  Search,
  ShieldCheck,
  TrendingUp,
} from "lucide-react";

export function Sidebar() {
  const setUser = useAuthStore((state) => state.setUser);
  const user = useAuthStore((state) => state.user);
  const listPlaylists = usePlaylistStore((state) => state.playlists);
  const setListPlaylists = usePlaylistStore((state) => state.setPlaylists);
  const { query, setQuery } = useSearchStore();
  const navigate = useNavigate();
  const location = useLocation();
  const inputRef = useRef(null);
  const dropdownRef = useRef(null);
  const debounceRef = useRef(null);
  const closeMobileSidebar = useUIStore((s) => s.closeMobileSidebar);

  const [dropdownCreators, setDropdownCreators] = useState([]);
  const [dropdownTracks, setDropdownTracks] = useState([]);
  const [dropdownUsers, setDropdownUsers] = useState([]);
  const [dropdownAlbums, setDropdownAlbums] = useState([]);
  const [dropdownGenres, setDropdownGenres] = useState([]);
  const [dropdownOpen, setDropdownOpen] = useState(false);
  const allAlbumsRef = useRef([]);

  useEffect(() => {
    if (location.pathname === "/search") {
      inputRef.current?.focus();
    }
  }, [location.pathname]);

  // Charger tous les albums une seule fois
  useEffect(() => {
    if (!useAuthStore.getState().isAuthenticated) return;
    handleGetCollections((data) => {
      allAlbumsRef.current = data ?? [];
    });
  }, []);

  // Autocomplete : fetch creators + tracks à chaque frappe
  useEffect(() => {
    clearTimeout(debounceRef.current);
    if (!query.trim()) {
      setDropdownCreators([]);
      setDropdownTracks([]);
      setDropdownUsers([]);
      setDropdownAlbums([]);
      setDropdownGenres([]);
      setDropdownOpen(false);
      return;
    }
    debounceRef.current = setTimeout(() => {
      if (!useAuthStore.getState().isAuthenticated) return;
      handleSearchCreators(query, (data) =>
        setDropdownCreators((data ?? []).slice(0, 5)),
      );
      handleSearchTracks(query, "music", (data) => {
        setDropdownTracks((data ?? []).slice(0, 5));
        const q = query.toLowerCase();
        const seen = new Set();
        setDropdownGenres(
          (data ?? [])
            .filter(
              (t) =>
                t.Genre?.ID &&
                t.Genre.Name?.toLowerCase().includes(q) &&
                !seen.has(t.Genre.ID) &&
                seen.add(t.Genre.ID),
            )
            .map((t) => t.Genre)
            .slice(0, 3),
        );
      });
      handleSearchUsers(query, (data) =>
        setDropdownUsers((data ?? []).slice(0, 5)),
      );
      const q = query.toLowerCase();
      setDropdownAlbums(
        allAlbumsRef.current
          .filter((a) => a.Name?.toLowerCase().includes(q))
          .slice(0, 5),
      );
    }, 100);
    return () => clearTimeout(debounceRef.current);
  }, [query]);

  // Ouvrir le dropdown dès qu'il y a des résultats
  useEffect(() => {
    if (
      dropdownCreators.length > 0 ||
      dropdownTracks.length > 0 ||
      dropdownUsers.length > 0 ||
      dropdownAlbums.length > 0 ||
      dropdownGenres.length > 0
    ) {
      setDropdownOpen(true);
    } else {
      setDropdownOpen(false);
    }
  }, [dropdownCreators, dropdownTracks, dropdownUsers, dropdownAlbums]);

  // Fermer le dropdown au clic extérieur
  useEffect(() => {
    const fn = (e) => {
      if (
        dropdownRef.current &&
        !dropdownRef.current.contains(e.target) &&
        inputRef.current &&
        !inputRef.current.contains(e.target)
      ) {
        setDropdownOpen(false);
      }
    };
    document.addEventListener("mousedown", fn);
    return () => document.removeEventListener("mousedown", fn);
  }, []);

  const goToSearch = useCallback(() => {
    if (query.trim()) {
      setDropdownOpen(false);
      navigate("/search");
      closeMobileSidebar();
    }
  }, [query, navigate, closeMobileSidebar]);

  /* Playlists — chargées une seule fois au login si le store est vide */
  useEffect(() => {
    if (!user) {
      setListPlaylists([]);
      return;
    }

    if (!user?.ID || listPlaylists.length > 0) return;
    handleGetPlaylists((data) => setListPlaylists(data ?? []));
  }, [user]);

  return (
    <div className="flex h-full flex-col">
      <TitleSB />

      <div className="relative mx-2 mt-4 mb-2">
        <button
          onClick={goToSearch}
          className="absolute left-1 top-1/2 -translate-y-1/2 flex h-6 w-6 items-center justify-center text-gray-400 hover:text-white transition-colors"
          title="Lancer la recherche"
        >
          <Search className="h-4 w-4" />
        </button>
        <input
          ref={inputRef}
          title="Rechercher"
          className="w-full rounded-full bg-whiteW_20 py-1.5 pl-8 pr-3 text-sm text-white placeholder-gray-400 outline-none focus:ring-1 focus:ring-white/30"
          placeholder="Rechercher"
          value={query}
          onChange={(e) => {
            setQuery(e.target.value);
            if (e.target.value.trim()) {
              if (location.pathname !== "/search") navigate("/search");
            } else {
              if (location.pathname === "/search") navigate(-1);
            }
          }}
          onFocus={() => {
            if (dropdownCreators.length > 0 || dropdownTracks.length > 0)
              setDropdownOpen(true);
          }}
          onKeyDown={(e) => e.key === "Enter" && goToSearch()}
        />

        {/* Dropdown autocomplete — mobile uniquement */}
        {dropdownOpen && (
          <div
            ref={dropdownRef}
            className="sm:hidden absolute left-0 right-0 top-full mt-1 z-50 bg-blackW border border-whiteW_20 rounded-xl shadow-xl overflow-hidden"
          >
            {dropdownCreators.length > 0 && (
              <div>
                <p className="px-3 pt-2 pb-1 text-[10px] uppercase tracking-wider text-whiteW_50 font-semibold">
                  Artistes
                </p>
                {dropdownCreators.map((c) => (
                  <Link
                    key={c.ID}
                    to={`/artists/${c.ID}`}
                    onClick={() => {
                      setDropdownOpen(false);
                      closeMobileSidebar();
                    }}
                    className="flex items-center gap-2.5 px-3 py-1.5 hover:bg-whiteW_10 transition-colors"
                  >
                    {c.CoverURL ? (
                      <img
                        src={c.CoverURL}
                        alt={c.Name}
                        loading="lazy"
                        className="h-8 w-8 rounded-full object-cover shrink-0"
                      />
                    ) : (
                      <div
                        className={`h-8 w-8 rounded-full bg-gradient-to-br ${DEFAULT_ARTIST_GRADIENT} shrink-0`}
                      />
                    )}
                    <span className="text-xs text-whiteW truncate">
                      {c.Name}
                    </span>
                  </Link>
                ))}
              </div>
            )}

            {dropdownTracks.length > 0 && (
              <div>
                <p className="px-3 pt-2 pb-1 text-[10px] uppercase tracking-wider text-whiteW_50 font-semibold">
                  Musiques
                </p>
                {dropdownTracks.map((t) => (
                  <Link
                    key={t.ID}
                    to={`/tracks/${t.ID}`}
                    onClick={() => {
                      setDropdownOpen(false);
                      closeMobileSidebar();
                    }}
                    className="flex items-center gap-2.5 px-3 py-1.5 hover:bg-whiteW_10 transition-colors"
                  >
                    {t.CoverURL ? (
                      <img
                        src={resolveUrl(t.CoverURL)}
                        alt={t.Title}
                        loading="lazy"
                        className="h-8 w-8 rounded object-cover shrink-0"
                      />
                    ) : (
                      <div
                        className={`h-8 w-8 rounded bg-gradient-to-br ${gradientFromId(t.ID)} shrink-0`}
                      />
                    )}
                    <div className="min-w-0">
                      <p className="text-xs text-whiteW truncate">{t.Title}</p>
                      <p className="text-[10px] text-whiteW_50 truncate">
                        {t.Creator?.Name}
                      </p>
                    </div>
                  </Link>
                ))}
              </div>
            )}

            {dropdownAlbums.length > 0 && (
              <div>
                <p className="px-3 pt-2 pb-1 text-[10px] uppercase tracking-wider text-whiteW_50 font-semibold">
                  Albums
                </p>
                {dropdownAlbums.map((a) => (
                  <Link
                    key={a.ID}
                    to={`/albums/${a.ID}`}
                    onClick={() => {
                      setDropdownOpen(false);
                      closeMobileSidebar();
                    }}
                    className="flex items-center gap-2.5 px-3 py-1.5 hover:bg-whiteW_10 transition-colors"
                  >
                    {a.CoverURL ? (
                      <img
                        src={a.CoverURL}
                        alt={a.Name}
                        loading="lazy"
                        className="h-8 w-8 rounded object-cover shrink-0"
                      />
                    ) : (
                      <div
                        className={`h-8 w-8 rounded bg-gradient-to-br ${gradientFromId(a.ID)} shrink-0`}
                      />
                    )}
                    <span className="text-xs text-whiteW truncate">
                      {a.Name}
                    </span>
                  </Link>
                ))}
              </div>
            )}

            {dropdownUsers.length > 0 && (
              <div>
                <p className="px-3 pt-2 pb-1 text-[10px] uppercase tracking-wider text-whiteW_50 font-semibold">
                  Utilisateurs
                </p>
                {dropdownUsers.map((u) => (
                  <Link
                    key={u.ID}
                    to={`/profileUsers/${u.ID}`}
                    onClick={() => {
                      setDropdownOpen(false);
                      closeMobileSidebar();
                    }}
                    className="flex items-center gap-2.5 px-3 py-1.5 hover:bg-whiteW_10 transition-colors"
                  >
                    {u.AvatarURL ? (
                      <img
                        src={u.AvatarURL}
                        alt={u.Username}
                        loading="lazy"
                        className="h-8 w-8 rounded-full object-cover shrink-0"
                      />
                    ) : (
                      <div className="h-8 w-8 rounded-full bg-whiteW_20 flex items-center justify-center shrink-0">
                        <User size={14} className="text-whiteW_50" />
                      </div>
                    )}
                    <span className="text-xs text-whiteW truncate">
                      {u.Username}
                    </span>
                  </Link>
                ))}
              </div>
            )}

            {dropdownGenres.length > 0 && (
              <div>
                <p className="px-3 pt-2 pb-1 text-[10px] uppercase tracking-wider text-whiteW_50 font-semibold">
                  Genres
                </p>
                {dropdownGenres.map((g) => (
                  <Link
                    key={g.ID}
                    to={`/genre/${g.ID}?name=${encodeURIComponent(g.Name)}`}
                    onClick={() => {
                      setDropdownOpen(false);
                      closeMobileSidebar();
                    }}
                    className="flex items-center gap-2.5 px-3 py-1.5 hover:bg-whiteW_10 transition-colors"
                  >
                    <span className="text-xs text-whiteW truncate">
                      {g.Name}
                    </span>
                  </Link>
                ))}
              </div>
            )}

            <button
              onClick={goToSearch}
              className="w-full px-3 py-2 text-[11px] text-whiteW_50 hover:text-whiteW hover:bg-whiteW_10 transition-colors text-left border-t border-whiteW_20"
            >
              Voir tous les résultats pour « {query} »
            </button>
          </div>
        )}
      </div>

      <div className="flex-1 overflow-y-auto">
        <div className="mt-2">
          {(user?.RoleName === "admin" || user?.RoleName === "owner") && (
            <SectionSB title="Administration">
              <NavSidebarItem to="/admin" icon={ShieldCheck} label="Admin" />
            </SectionSB>
          )}
          <SectionSB title="Menu">
            <NavSidebarItem to="/home" icon={LayoutGrid} label="Accueil" />
            <NavSidebarItem to="/artist" icon={User} label="Artistes" />
          </SectionSB>

          {user && (
            <>
              <SectionSB title="Bibliothèque">
                <NavSidebarItem
                  to="/tracksLiked"
                  icon={Heart}
                  label="Likes"
                />
                <NavSidebarItem
                  to="/playlist-manager"
                  icon={Library}
                  label="Playlists manager"
                />
                <NavSidebarItem
                  to="/history"
                  icon={History}
                  label="Historique"
                />
                <NavSidebarItem to="/tops" icon={TrendingUp} label="Vos tops" />
              </SectionSB>

              <SectionSB title="Playlists">
                <PlaylistsList playlists={listPlaylists} />
              </SectionSB>
            </>
          )}
        </div>
      </div>
      <div className="border-t border-whiteW_20 px-2 pt-4 flex flex-col gap-1">
        <UserSidebarButton />
      </div>
    </div>
  );
}
