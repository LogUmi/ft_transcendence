import {
  getTrack,
  getGenre,
  getUser,
  updateUser,
  login,
  register,
  validate,
  ApiError,
  getTracks,
  searchTracks,
  getCollection,
  getCreator,
  getHistoryLogs,
  getLastHistoryLogTrack,
  likeTrack,
  unlikeTrack,
  getCollections,
  getCreators,
  recordHistory,
  createPlaylist,
  updatePlaylist,
  deletePlaylist,
  getFriends,
  getFriendRelation,
  friendRequest,
  searchUsers,
  deleteUser,
  getUserLikes,
  getCreatorTracks,
  getCreatorCollections,
  getPlaylist,
  getPlaylists,
  renamePlaylist,
  addTrackToPlaylist,
  removeTrackFromPlaylist,
  reorderPlaylistTracks,
  logout,
  getCurentUser,
  getPrivateMessages,
  getUserAnalytic,
  getHomeAnalytic,
  uploadAvatar,
  getAdminUser,
  getAdminTrack,
  updateRoleUser,
  updateAdminTrack,
} from "./api";

import type {
  User,
  Genre,
  Track,
  Collection,
  Creator,
  HistoryLog,
  Like,
  Playlist,
  LoginBody,
  RegisterBody,
  AuthResponse,
  UpdateUserBody,
  PrivateMessage,
  RecordHistoryBody,
  AnalyticType,
  UserAnalytic,
  HomeAnalytic,
  UpdateRoleBody,
} from "./type";

async function withHandler<T>(
  fn: () => Promise<T>,
  set?: (v: T | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  try {
    setError?.("");
    const result = await fn();
    set?.(result);
  } catch (err) {
    setError?.(err instanceof Error ? err.message : "Erreur inconnue");
    set?.(null);
  }
}

export function handleLogin(
  credentials: LoginBody,
  setAuth?: (v: AuthResponse | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => login(credentials), setAuth, setError);
}

export async function handleValidate(): Promise<boolean> {
  try {
    await validate();
    return true;
  } catch (err) {
    // Erreur réseau (hors ligne) → on garde la session
    if (!(err instanceof ApiError)) return true;
    return false;
  }
}

export function handleRegister(
  payload: RegisterBody,
  setAuth?: (v: AuthResponse | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => register(payload), setAuth, setError);
}

export function handleGetUser(
  id: number,
  setUser?: (v: User | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getUser(id), setUser, setError);
}

export function handleUpdateUser(
  body: UpdateUserBody,
  setUser?: (v: User | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => updateUser(body), setUser, setError);
}

export function handleUploadAvatar(
  file: File,
  setAvatarUrl?: (v: { avatar_url: string } | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => uploadAvatar(file), setAvatarUrl, setError);
}

export function handleGetTrack(
  id: number,
  setTrack?: (v: Track | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getTrack(id), setTrack, setError);
}

export function isValidUrl(url: string): boolean {
  try {
    new URL(url);
    return true;
  } catch {
    return false;
  }
}

export function handleGetTracks(
  setTracks?: (v: Track[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getTracks(), setTracks, setError);
}

export function handleGetCollection(
  id: number,
  setCollection?: (v: Collection | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getCollection(id), setCollection, setError);
}

export function handleGetCreator(
  id: number,
  setCreator?: (v: Creator | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getCreator(id), setCreator, setError);
}

export function handleGetHistoryLogs(
  setLogs?: (v: HistoryLog[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getHistoryLogs(), setLogs, setError);
}

export function handleGetLastHistoryLogTrack(
  trackId: number,
  setLog?: (v: HistoryLog | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getLastHistoryLogTrack(trackId), setLog, setError);
}

export function handleLikeTrack(
  id: number,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => likeTrack(id), undefined, setError);
}

export function handleUnlikeTrack(
  id: number,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => unlikeTrack(id), undefined, setError);
}

export function handleGetCollections(
  setCollections?: (v: Collection[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getCollections(), setCollections, setError);
}

export function handleGetCreators(
  setCreators?: (v: Creator[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getCreators(), setCreators, setError);
}

export function handleSearchCreators(
  query: string,
  setCreators?: (v: Creator[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getCreators(query), setCreators, setError);
}

export function handleRecordHistory(
  body: RecordHistoryBody,
  setError?: (v: string) => void,
  keepalive?: boolean,
): Promise<void> {
  return withHandler(() => recordHistory(body, keepalive), undefined, setError);
}

export function handleUpdatePlaylist(
  id: number,
  body: { Title: string; TrackIDs: number[] },
  setPlaylist?: (v: Playlist | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => updatePlaylist(id, body), setPlaylist, setError);
}

export function handleDeletePlaylist(
  id: number,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => deletePlaylist(id), undefined, setError);
}

export function handleGetFriends(
  status: "granted" | "pending" | "blocked",
  setFriends?: (
    v:
      | { ID: number; Username: string; AvatarURL: string; CreatedBy: number }[]
      | null,
  ) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getFriends(status), setFriends, setError);
}

export function handleGetFriendRelation(
  userId: number,
  setRelation?: (
    v: { RequestStatus: string | null; CreatedBy: number | null } | null,
  ) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getFriendRelation(userId), setRelation, setError);
}

export function handleFriendRequest(
  userId: number,
  status: "pending" | "granted" | "rejected" | "blocked",
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => friendRequest(userId, status), undefined, setError);
}

export function handleSearchUsers(
  query: string,
  setResults?: (v: User[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => searchUsers(query), setResults, setError);
}

export function handleDeleteUser(
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => deleteUser(), undefined, setError);
}

export function handleGetUserLikes(
  setLikes?: (v: Like[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getUserLikes(), setLikes, setError);
}

export function handleGetCreatorTracks(
  id: number,
  setTracks?: (v: Track[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getCreatorTracks(id), setTracks, setError);
}

export function handleGetCreatorCollections(
  id: number,
  setCollections?: (v: Collection[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getCreatorCollections(id), setCollections, setError);
}

export function handleGetPlaylist(
  id: number,
  setPlaylist?: (v: Playlist | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getPlaylist(id), setPlaylist, setError);
}

export function handleGetPlaylists(
  setPlaylists?: (v: Playlist[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getPlaylists(), setPlaylists, setError);
}

export function handleRenamePlaylist(
  id: number,
  body: { Title: string },
  setPlaylist?: (v: Playlist | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => renamePlaylist(id, body), setPlaylist, setError);
}

export function handleCreatePlaylist(
  body: { Title: string },
  setPlaylist?: (v: Playlist | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => createPlaylist(body), setPlaylist, setError);
}

export function handleAddTrackToPlaylist(
  playlistId: number,
  body: { TrackID: number },
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(
    () => addTrackToPlaylist(playlistId, body),
    undefined,
    setError,
  );
}

export function handleRemoveTrackFromPlaylist(
  playlistId: number,
  trackId: number,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(
    () => removeTrackFromPlaylist(playlistId, trackId),
    undefined,
    setError,
  );
}

export function handleReorderPlaylistTracks(
  playlistId: number,
  body: { TrackID: number; Position: number }[],
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(
    () => reorderPlaylistTracks(playlistId, body),
    undefined,
    setError,
  );
}

export function handleLogout(setError?: (v: string) => void): Promise<void> {
  return withHandler(() => logout(), undefined, setError);
}

export function handleSearchTracks(
  query: string,
  type: string | undefined,
  setTracks?: (v: Track[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => searchTracks(query, type), setTracks, setError);
}

export function handleGetCurrentUser(
  setUser?: (v: User | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getCurentUser(), setUser, setError);
}

export function handleGetPrivateMessages(
  withUserId: number,
  setMessages?: (v: PrivateMessage[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(
    () => getPrivateMessages(withUserId),
    setMessages,
    setError,
  );
}

export function handleGetUserAnalytic(
  type: AnalyticType,
  setData?: (v: UserAnalytic | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getUserAnalytic(type), setData, setError);
}

export function handleGetHomeAnalytic(
  type: AnalyticType,
  setData?: (v: HomeAnalytic | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getHomeAnalytic(type), setData, setError);
}

export function handleGetGenre(
  id: number,
  setGenre?: (v: Genre | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getGenre(id), setGenre, setError);
}

export function handleGetAdminUser(
  setUsers?: (v: User[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getAdminUser(), setUsers, setError);
}

export function handleGetAdminTrack(
  setTracks?: (v: Track[] | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => getAdminTrack(), setTracks, setError);
}

export function handleUpdateRoleUser(
  body: UpdateRoleBody,
  setUser?: (v: User | null) => void,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => updateRoleUser(body), setUser, setError);
}

export function handleUpdateAdminTrack(
  trackId: number,
  isDeadLink: boolean,
  setError?: (v: string) => void,
): Promise<void> {
  return withHandler(() => updateAdminTrack(trackId, isDeadLink), undefined, setError);
}
