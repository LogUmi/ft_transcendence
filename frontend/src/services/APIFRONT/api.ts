import type {
  Track,
  Genre,
  Collection,
  Creator,
  HistoryLog,
  Like,
  Playlist,
  User,
  LoginBody,
  RegisterBody,
  AuthResponse,
  UpdateUserBody,
  UploadUrlBody,
  UploadUrlResponse,
  PrivateMessage,
  RecordHistoryBody,
  AnalyticType,
  UserAnalytic,
  HomeAnalytic,
  UpdateRoleBody,
} from "./type";

// Chaîne vide = chemins relatifs → le proxy Vite (/api → localhost:8080) prend le relais
const BASE_URL = "";

type HttpMethod = "GET" | "POST" | "PUT" | "PATCH" | "DELETE";

type RequestOptions = {
  method?: HttpMethod;
  body?: unknown;
  headers?: HeadersInit;
  timeout?: number;
  keepalive?: boolean;
};

export type ApiErrorPayload = {
  error?: string;
  message?: string;
};

export type HealthResponse = {
  status: string;
  db: string;
  redis: string;
};

export class ApiError extends Error {
  status: number;
  payload: ApiErrorPayload | null;

  constructor(
    status: number,
    message: string,
    payload: ApiErrorPayload | null = null,
  ) {
    super(message);
    this.name = "ApiError";
    this.status = status;
    this.payload = payload;
  }
}

async function parseResponseBody(response: Response) {
  const contentType = response.headers.get("content-type") ?? "";

  if (contentType.includes("application/json")) {
    return response.json();
  }

  const text = await response.text();
  return text || null;
}

async function request<T>(
  path: string,
  options: RequestOptions = {},
): Promise<T> {
  const {
    method = "GET",
    body,
    headers,
    timeout = 10_000,
    keepalive,
  } = options;

  const response = await fetch(`${BASE_URL}${path}`, {
    method,
    headers: {
      ...(body ? { "Content-Type": "application/json" } : {}),
      ...headers,
    },
    body: body ? JSON.stringify(body) : undefined,
    signal: keepalive ? undefined : AbortSignal.timeout(timeout),
    keepalive,
  });

  const payload = await parseResponseBody(response);

  if (!response.ok) {
    const errorPayload =
      payload && typeof payload === "object"
        ? (payload as ApiErrorPayload)
        : null;
    const message =
      errorPayload?.error ??
      errorPayload?.message ??
      `Erreur HTTP ${response.status}`;

    throw new ApiError(response.status, message, errorPayload);
  }

  return payload as T;
}

export function health() {
  return request<HealthResponse>("/api/health");
}

export function login(body: LoginBody) {
  return request<AuthResponse>("/api/auth/login", { method: "POST", body });
}

export function validate() {
  return request<{ message: string }>("/api/auth/validate");
}

export function register(body: RegisterBody) {
  return request<AuthResponse>("/api/auth/register", { method: "POST", body });
}

export function getUser(id: number) {
  return request<User>(`/api/users/${id}`);
}

export function updateUser(body: UpdateUserBody) {
  return request<User>(`/api/users/me`, { method: "PUT", body });
}

export async function uploadAvatar(
  file: File,
): Promise<{ avatar_url: string }> {
  const form = new FormData();
  form.append("avatar", file);
  const response = await fetch("/api/users/me/avatar", {
    method: "POST",
    body: form,
  });
  const payload = await parseResponseBody(response);
  if (!response.ok) {
    throw new ApiError(
      response.status,
      "avatar upload failed",
      payload as ApiErrorPayload,
    );
  }
  return payload as { avatar_url: string };
}

export function getTrack(id: number) {
  return request<Track>(`/api/tracks/${id}`);
}

export function getTracks() {
  return request<Track[]>("/api/tracks");
}

export function searchTracks(query: string, type?: string) {
  const params = new URLSearchParams({ search: query });
  if (type) params.set("type", type);
  return request<Track[]>(`/api/tracks?${params.toString()}`);
}

export async function getCollection(id: number): Promise<Collection> {
  const data = await request<{ album: Collection; tracks: Track[] }>(
    `/api/albums/${id}`,
  );
  return { ...data.album, Tracks: data.tracks };
}

export function getCreator(id: number) {
  return request<Creator>(`/api/creators/${id}`);
}

export function getHistoryLogs() {
  return request<HistoryLog[]>("/api/history");
}

export function getLastHistoryLogTrack(trackId: number) {
  return request<HistoryLog>(`/api/history/track/${trackId}`);
}

export function likeTrack(id: number) {
  return request<void>(`/api/likes/${id}`, { method: "POST" });
}

export function unlikeTrack(id: number) {
  return request<void>(`/api/likes/${id}`, { method: "POST" });
}

export function getCollections() {
  return request<Collection[]>("/api/albums");
}

export function getCreators(search?: string) {
  const url = search
    ? `/api/creators?search=${encodeURIComponent(search)}`
    : "/api/creators";
  return request<Creator[]>(url);
}

export function recordHistory(body: RecordHistoryBody, keepalive?: boolean) {
  return request<void>(`/api/history`, { method: "POST", body, keepalive });
}

export function updatePlaylist(
  id: number,
  body: { Title: string; TrackIDs: number[] },
) {
  return request<Playlist>(`/api/playlists/${id}`, {
    method: "PUT",
    body,
  });
}

export function deletePlaylist(id: number) {
  return request<void>(`/api/playlists/${id}`, { method: "DELETE" });
}

export async function getFriends(
  status: "granted" | "pending" | "blocked",
): Promise<
  { ID: number; Username: string; AvatarURL: string; CreatedBy: number }[]
> {
  const raw = await request<
    { id: number; username: string; avatar_url: string; created_by: number }[]
  >(`/api/friends?status=${status}`);
  return raw.map((f) => ({
    ID: f.id,
    Username: f.username,
    AvatarURL: f.avatar_url,
    CreatedBy: f.created_by,
  }));
}

export function searchUsers(query: string) {
  return request<User[]>(`/api/users?search=${encodeURIComponent(query)}`);
}

export async function getFriendRelation(userId: number) {
  const raw = await request<{
    status: string | null;
    created_by: number | null;
  }>(`/api/friends/${userId}`);
  return {
    RequestStatus: raw.status,
    CreatedBy: raw.created_by,
  };
}

export function friendRequest(
  userId: number,
  status: "pending" | "granted" | "rejected" | "blocked",
) {
  return request<void>(`/api/friends/${userId}`, {
    method: "POST",
    body: { user_id: userId, status },
  });
}

export function deleteUser() {
  return request<void>(`/api/users/me`, { method: "DELETE" });
}

export function getUserLikes() {
  return request<Like[]>(`/api/likes`);
}

export function getCreatorTracks(id: number) {
  return request<Track[]>(`/api/creators/${id}/tracks`);
}

export function getCreatorCollections(id: number) {
  return request<Collection[]>(`/api/creators/${id}/collections`);
}

export function getPlaylist(id: number) {
  return request<Playlist>(`/api/playlists/${id}`);
}

export function getPlaylists() {
  return request<Playlist[]>(`/api/playlists`);
}

export function renamePlaylist(id: number, body: { Title: string }) {
  return request<Playlist>(`/api/playlists/${id}`, {
    method: "PUT",
    body: { title: body.Title },
  });
}

export function createPlaylist(body: { Title: string }) {
  return request<Playlist>(`/api/playlists`, {
    method: "POST",
    body: { title: body.Title },
  });
}

export function addTrackToPlaylist(
  playlistId: number,
  body: { TrackID: number },
) {
  return request<void>(`/api/playlists/${playlistId}/tracks`, {
    method: "POST",
    body: { track_id: body.TrackID },
  });
}

export function removeTrackFromPlaylist(playlistId: number, trackId: number) {
  return request<void>(`/api/playlists/${playlistId}/tracks/${trackId}`, {
    method: "DELETE",
  });
}

export function reorderPlaylistTracks(
  playlistId: number,
  body: { TrackID: number; Position: number }[],
) {
  return request<void>(`/api/playlists/${playlistId}/tracks`, {
    method: "PUT",
    body: body.map((item) => ({
      track_id: item.TrackID,
      position: item.Position,
    })),
  });
}

export function logout() {
  return request<void>(`/api/auth/logout`, { method: "POST" });
}

export function checkUploadUrl(body: UploadUrlBody) {
  return request<UploadUrlResponse>("/api/upload/check", {
    method: "POST",
    body,
  });
}

export function createCollection(body: { Name: string; TrackIDs: number[] }) {
  return request<Collection>("/api/collections", {
    method: "POST",
    body,
  });
}

export function updateCollection(
  id: number,
  body: { Name: string; TrackIDs: number[] },
) {
  return request<Collection>(`/api/collections/${id}`, {
    method: "PUT",
    body,
  });
}

export function getCurentUser() {
  return request<User>(`/api/users/me`);
}

export type ChatMessage = {
  id: number;
  content: string;
  sender_id: number;
  sender_name: string;
  created_at: string;
};

export type ChatMessagesResponse = {
  messages: ChatMessage[];
  last_read_message_id: number | null;
};

export type ChatChannel = {
  channel_id: number;
  is_general: boolean;
  other_user_id: number | null;
  other_user_name: string | null;
  other_avatar_url: string | null;
};

export async function getChatChannels(): Promise<ChatChannel[]> {
  return request<ChatChannel[]>("/api/chat/channels_list");
}

export async function getChatChannelMessages(
  channelId: number,
  before?: number,
): Promise<ChatMessagesResponse> {
  const url = before
    ? `/api/chat/channels/${channelId}/messages?before=${before}`
    : `/api/chat/channels/${channelId}/messages`;
  const raw = await request<ChatMessage[] | ChatMessagesResponse>(url);
  if (Array.isArray(raw)) return { messages: raw, last_read_message_id: null };
  return raw;
}

export function getPrivateMessages(withUserId: number) {
  return request<PrivateMessage[]>(`/api/user/pvMessage?with=${withUserId}`);
}

export function getUserAnalytic(type: AnalyticType) {
  return request<UserAnalytic>(`/api/analytic/user/${type}`);
}

export function getHomeAnalytic(type: AnalyticType) {
  return request<HomeAnalytic>(`/api/analytic/home/${type}`);
}

export async function getGenre(id: number): Promise<Genre> {
  const raw = await request<any>(`/api/genre/${id}`);
  return {
    ID: raw.id,
    Name: raw.name,
    CoverURL: raw.cover_url ?? null,
    Tracks: raw.tracks ?? [],
  };
}

export function getAdminUser() {
  return request<User[]>(`/api/admin/users`);
}

export function getAdminTrack() {
  return request<Track[]>(`/api/admin/tracks`);
}

export function updateRoleUser(body: UpdateRoleBody) {
  return request<User>(`/api/admin/user`, { method: "PATCH", body });
}

export function updateAdminTrack(trackId: number, isDeadLink: boolean) {
  return request<void>(`/api/admin/track`, {
    method: "PATCH",
    body: { id_track: trackId, is_dead_link: isDeadLink },
  });
}
