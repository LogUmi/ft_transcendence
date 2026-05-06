import { useEffect, useMemo, useRef, useState } from "react";
import {
  handleGetAdminUser,
  handleSearchTracks,
  handleUpdateRoleUser,
  handleUpdateAdminTrack,
} from "../services/APIFRONT/handle";
import { useAdminStore } from "../store/adminStore";

export default function Admin() {
  const [activeTab, setActiveTab] = useState("users");

  const [userSearch, setUserSearch] = useState("");
  const [trackSearch, setTrackSearch] = useState("");
  const [trackType, setTrackType] = useState("all");

  const [users, setUsers] = useState([]);
  const [userError, setUserError] = useState("");
  const [trackError, setTrackError] = useState("");

  const [roleFilter, setRoleFilter] = useState("all");
  const [alphaOrder, setAlphaOrder] = useState("asc"); // asc / desc

  const debounceRef = useRef(null);

  const tracks = useAdminStore((s) => s.tracks);
  const setTracks = useAdminStore((s) => s.setTracks);
  const clearTracks = useAdminStore((s) => s.clearTracks);

  // ---------------- HELPERS ----------------
  const normalize = (v) => String(v ?? "").toLowerCase();

  const getUserName = (u) => u.Username ?? u.username ?? "";
  const getUserEmail = (u) => u.Email ?? u.email ?? "";
  const getUserRole = (u) => u.RoleName ?? u.roleName ?? "user";
  const getUserIsActive = (u) => u.IsActive ?? u.isActive ?? true;

  const getTrackTitle = (t) => t.Title ?? t.title ?? "";

  // ---------------- USERS ----------------
  const fetchUsers = () => handleGetAdminUser(setUsers, setUserError);

  useEffect(() => {
    fetchUsers();
  }, []);

  const filteredUsers = useMemo(() => {
    const q = normalize(userSearch);

    let filtered = users.filter((u) => normalize(getUserName(u)).includes(q));

    // Filtrer actifs par role
    if (roleFilter !== "all") {
      filtered = filtered.filter((u) => getUserRole(u) === roleFilter);
    }

    // Trier par ordre alphabétique
    filtered.sort((a, b) => {
      const nameA = getUserName(a).toLowerCase();
      const nameB = getUserName(b).toLowerCase();
      if (nameA < nameB) return alphaOrder === "asc" ? -1 : 1;
      if (nameA > nameB) return alphaOrder === "asc" ? 1 : -1;
      return 0;
    });

    return filtered;
  }, [users, userSearch, roleFilter, alphaOrder]);

  // ---------------- TRACKS ----------------
  useEffect(() => {
    const query = trackSearch.trim();

    if (!query) {
      clearTracks();
      return;
    }

    clearTimeout(debounceRef.current);

    debounceRef.current = setTimeout(() => {
      handleSearchTracks(
        query,
        trackType === "all" ? undefined : trackType,
        (data) => setTracks(data ?? []),
        setTrackError,
      );
    }, 300);

    return () => clearTimeout(debounceRef.current);
  }, [trackSearch, trackType]);

  // ---------------- ACTIONS ----------------
  const handleUserAction = async (userId, action) => {
    await handleUpdateRoleUser({ id: userId, action });
    fetchUsers(); // refresh la liste après action
  };

  return (
    <div className="p-6 space-y-6">
      <h2 className="text-2xl font-bold">Admin</h2>

      {/* TABS */}
      <div className="flex gap-4">
        <button
          onClick={() => setActiveTab("users")}
          className={`p-4 rounded-xl ${
            activeTab === "users"
              ? "bg-whiteW_10 border border-whiteW_20"
              : "bg-whiteW_5"
          }`}
        >
          Users
        </button>

        <button
          onClick={() => setActiveTab("tracks")}
          className={`p-4 rounded-xl ${
            activeTab === "tracks"
              ? "bg-whiteW_10 border border-whiteW_20"
              : "bg-whiteW_5"
          }`}
        >
          Tracks
        </button>
      </div>

      {/* USERS */}
      {activeTab === "users" && (
        <>
          <input
            value={userSearch}
            onChange={(e) => setUserSearch(e.target.value)}
            placeholder="Search user"
            className="w-full p-3 bg-whiteW_10 rounded-lg"
          />

          {userError && <p className="text-redW">{userError}</p>}

          {/* Filtre role et tri alphabétique pour utilisateurs actifs */}
          <div className="flex gap-4 my-4">
            <select
              value={roleFilter}
              onChange={(e) => setRoleFilter(e.target.value)}
              className="p-2 bg-whiteW_10 rounded"
            >
              <option value="all">All roles</option>
              <option value="admin">Admin</option>
              <option value="user">User</option>
            </select>

            <select
              value={alphaOrder}
              onChange={(e) => setAlphaOrder(e.target.value)}
              className="p-2 bg-whiteW_10 rounded"
            >
              <option value="asc">A → Z</option>
              <option value="desc">Z → A</option>
            </select>
          </div>

          {/* USERS INACTIFS */}
          <div className="mt-6">
            <h3 className="text-lg font-semibold mb-2">
              Users en attente de suppression
            </h3>

            <div className="space-y-2">
              {filteredUsers
                .filter((u) => getUserIsActive(u) === false)
                .map((u, i) => (
                  <div
                    key={i}
                    className="p-3 bg-redW/20 rounded-lg flex justify-between items-center"
                  >
                    <div>
                      <p className="font-semibold">{getUserName(u)}</p>
                      <p className="text-sm opacity-60">{getUserEmail(u)}</p>
                    </div>

                    <button
                      className="px-3 py-1 bg-green-500 rounded text-sm"
                      onClick={() => handleUserAction(u.ID, "set_active")}
                    >
                      Restaurer
                    </button>
                  </div>
                ))}

              {filteredUsers.filter((u) => getUserIsActive(u) === false)
                .length === 0 && (
                <p className="opacity-50">Aucun utilisateur en attente</p>
              )}
            </div>
          </div>

          {/* USERS ACTIFS */}
          <div className="mt-6">
            <h3 className="text-lg font-semibold mb-2">Users actifs</h3>
            <div className="space-y-2">
              {filteredUsers
                .filter((u) => getUserIsActive(u) !== false)
                .map((u, i) => (
                  <div
                    key={i}
                    className="p-3 bg-whiteW_10 rounded-lg flex justify-between items-center"
                  >
                    <div>
                      <p className="font-semibold">
                        {getUserName(u)}
                        <span className="ml-2 text-xs font-normal opacity-50">[{getUserRole(u)}]</span>
                      </p>
                      <p className="text-sm opacity-60">{getUserEmail(u)}</p>
                    </div>

                    <div className="flex gap-2">
                      <button
                        className="px-3 py-1 bg-blue-500 rounded text-sm"
                        onClick={() =>
                          handleUserAction(
                            u.ID,
                            getUserRole(u) === "admin"
                              ? "set_user"
                              : "set_admin",
                          )
                        }
                      >
                        {getUserRole(u) === "admin" ? "Set user" : "Set admin"}
                      </button>

                    </div>
                  </div>
                ))}
            </div>
          </div>
        </>
      )}

      {/* TRACKS */}
      {activeTab === "tracks" && (
        <>
          <input
            value={trackSearch}
            onChange={(e) => setTrackSearch(e.target.value)}
            placeholder="Search track"
            className="w-full p-3 bg-whiteW_10 rounded-lg"
          />

          <select
            value={trackType}
            onChange={(e) => setTrackType(e.target.value)}
            className="p-2 bg-whiteW_10 rounded"
          >
            <option value="all">All</option>
            <option value="music">Music</option>
            <option value="podcast">Podcast</option>
          </select>

          {trackError && <p className="text-redW">{trackError}</p>}

          <div className="flex">
            <div className="flex-1 space-y-2">
              {tracks.map((t, i) => (
                <div
                  key={i}
                  className="p-3 bg-whiteW_10 rounded-lg flex justify-between items-center"
                >
                  <span>{getTrackTitle(t)}</span>

                  <button
                    className={`px-3 py-1 rounded text-sm ${(t.IsDeadLink ?? t.is_dead_link) ? "bg-green-500" : "bg-purple-500"}`}
                    onClick={() =>
                      handleUpdateAdminTrack(
                        t.ID ?? t.id,
                        !(t.IsDeadLink ?? t.is_dead_link),
                        setTrackError,
                      ).then(() =>
                        setTracks(
                          tracks.map((track) =>
                            (track.ID ?? track.id) === (t.ID ?? t.id)
                              ? {
                                  ...track,
                                  IsDeadLink: !(t.IsDeadLink ?? t.is_dead_link),
                                  is_dead_link: !(t.IsDeadLink ?? t.is_dead_link),
                                }
                              : track,
                          ),
                        ),
                      )
                    }
                  >
                    {(t.IsDeadLink ?? t.is_dead_link) ? "Restore" : "Dead link"}
                  </button>
                </div>
              ))}
            </div>
          </div>
        </>
      )}
    </div>
  );
}
