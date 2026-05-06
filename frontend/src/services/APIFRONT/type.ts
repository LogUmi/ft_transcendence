export type ISODateString = string;

// Auth
export type LoginBody = {
  email: string;
  password: string;
};

export type RegisterBody = {
  username: string;
  email: string;
  password: string;
};

export type AuthResponse = {
  token: string;
};

export type UpdateUserBody = {
  Username?: string;
  Email?: string;
  OldEmail?: string;
  NewEmail?: string;
  AvatarURL?: string | null;
  OldPassword?: string;
  Password?: string;
};

// Upload
export type UploadUrlBody = {
  url: string;
};

export type UploadUrlResponse = {
  ok: boolean;
};

export type RecordHistoryBody = {
  TrackID: number;
  StartedAt: ISODateString;
  EndedAt: ISODateString;
  LastPositionSeconds: number;
  LastSecondsListened: number;
  Completed: boolean;
  Skipped: boolean;
};

// GET /api/history — retourne un tableau de historyLogResponse (handler custom)
export interface HistoryLog {
  ID: number;
  UserID: number;
  TrackID: number;
  LastStartedAt: ISODateString | null;
  UpdatedAt: ISODateString;
  LastPositionSeconds: number;
  LastSecondsListened: number;
  Completed: boolean;
  Skipped: boolean;
  Track: Track;
}

// Format allégé retourné par GET /api/user/pvMessage?with=:userId
export interface PrivateMessage {
  message_id: number;
  sender_id: number;
  content: string;
  created_at: string;
}

// Like.User n'est pas preloadé par le backend (uniquement Track)
export interface Like {
  TrackID: number;
  UserID: number;
  User?: User;
  Track: Track;
}

export interface Playlist {
  ID: number;
  UserID: number;
  Title: string;
  User: User;
  Contents: PlaylistContent[];
}

// Playlist n'est pas preloadé — seuls Track et Track.Creator le sont
export interface PlaylistContent {
  PlaylistID: number;
  TrackID: number;
  Position: number;
  CreatedAt: ISODateString;
  UpdatedAt: ISODateString;
  Playlist?: Playlist;
  Track: Track;
}

export interface Track {
  ID: number;
  Type: string;
  Title: string;
  DurationSeconds: number;
  ReleaseDate: ISODateString | null;
  CreatorID: number;
  GenreID: number;
  CollectionID: number;
  AudioURL: string;
  CoverURL: string | null;
  SourceURL: string | null;
  LicenseCode: string | null;
  AttributionText: string | null;
  Creator: Creator;
  Genre: Genre;
  Collection: Collection;
}

export interface Creator {
  ID: number;
  Name: string;
  CoverURL: string | null;
}

export interface Collection {
  ID: number;
  Name: string;
  CoverURL: string | null;
  Tracks: Track[];
}

// GET /api/users/me et /api/users/:id retournent uniquement { ID, Username, Email, AvatarURL }
// Les autres champs sont présents via models.User (ex: SearchUsers) mais pas garantis
export interface User {
  ID: number;
  Email: string;
  Username: string;
  AvatarURL: string;
  RoleName?: string;
  Playlists?: Playlist[];
  Likes?: Like[];
  HistoryLogs?: HistoryLog[];
}

export interface Genre {
  ID: number;
  Name: string;
  CoverURL: string | null;
  Tracks: Track[];
}

export type AnalyticType = "music" | "podcast";

export interface AnalyticTrackEntry {}

export interface AnalyticCreatorEntry {}

export interface AnalyticGenreEntry {}

// GET /api/analytics/user/:type — données d'écoute personnelles de l'utilisateur connecté
export interface UserAnalytic {}

export interface HomeAnalyticTrackEntry {}

export interface HomeAnalyticCreatorEntry {}

// GET /api/analytics/home/:type — données générales du catalogue
export interface HomeAnalytic {}

export type UpdateRoleBody = {
  id: number;
  action: string;
};
