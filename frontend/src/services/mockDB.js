import UserAv from "../assets/UserAv.jpeg";
/*
	Base de données fictive — phase USE_MOCK
	À supprimer quand le back sera connecté.
	Toutes les données mock du projet viennent d'ici.
*/

// ─── Users ────────────────────────────────────────────────────────────────────

export const mockUsers = [
  {
    ID: 1,
    Username: "Suliak",
    Email: "suliak@wave.fr",
    Subscription: "Compte Pro",
    RoleName: "user",
    AvatarURL: null,
  },
  {
    ID: 2,
    Username: "Bastien",
    Email: "bastien@wave.fr",
    Subscription: "Compte gratuit",
    RoleName: "admin",
    AvatarURL: UserAv,
  },
  {
    ID: 3,
    Username: "Thomas",
    Email: "thomas@wave.fr",
    Subscription: "Compte gratuit",
    RoleName: "moderator",
    AvatarURL: UserAv,
  },
  {
    ID: 4,
    Username: "Léon",
    Email: "leon@wave.fr",
    Subscription: "Compte gratuit",
    RoleName: "moderator",
    AvatarURL: UserAv,
  },
  {
    ID: 5,
    Username: "Loïc",
    Email: "loic@wave.fr",
    Subscription: "Compte gratuit",
    RoleName: "moderator",
    AvatarURL: UserAv,
  },
];

// ─── Friends ─────────────────────────────────────────────────────────────────

// NOTE: appel API GET /api/friends dans Friends.jsx
export const mockFriends = [mockUsers[0], mockUsers[2]];

// NOTE: appel API GET /api/friends/requests dans Friends.jsx

export const mockFriendRequests = [mockUsers[3], mockUsers[4]];

// ─── Creators ────────────────────────────────────────────────────────────────

export const mockCreators = [
  { ID: 1, Name: "Queen", CoverURL: null },
  { ID: 2, Name: "HVOB", CoverURL: null },
  { ID: 3, Name: "Objekt", CoverURL: null },
  { ID: 4, Name: "Floating Points", CoverURL: null },
  { ID: 5, Name: "M83", CoverURL: null },
  { ID: 6, Name: "Odesza", CoverURL: null },
];

// ─── Tracks ──────────────────────────────────────────────────────────────────

export const mockTracks = [
  {
    ID: 1,
    Title: "Death on Two Legs",
    DurationSeconds: 218,
    ReleaseDate: "1975-11-01",
    Genre: { ID: 1, Name: "Rock" },
    AudioURL: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3",
    Creator: { ID: 1, Name: "Queen" },
  },
  {
    ID: 2,
    Title: "Lazing on a Sunday",
    DurationSeconds: 69,
    ReleaseDate: "1975-11-01",
    Genre: { ID: 1, Name: "Rock" },
    AudioURL: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3",
    Creator: { ID: 1, Name: "Queen" },
  },
  {
    ID: 3,
    Title: "I'm in Love with My Car",
    DurationSeconds: 182,
    ReleaseDate: "1975-11-01",
    Genre: { ID: 1, Name: "Rock" },
    AudioURL: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3",
    Creator: { ID: 1, Name: "Queen" },
  },
  {
    ID: 4,
    Title: "You're My Best Friend",
    DurationSeconds: 170,
    ReleaseDate: "1975-11-01",
    Genre: { ID: 1, Name: "Rock" },
    AudioURL: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3",
    Creator: { ID: 1, Name: "Queen" },
  },
  {
    ID: 5,
    Title: "Bohemian Rhapsody",
    DurationSeconds: 354,
    ReleaseDate: "1975-10-31",
    Genre: { ID: 1, Name: "Rock" },
    AudioURL: "",
    Creator: { ID: 1, Name: "Queen" },
  },
  {
    ID: 6,
    Title: "Sweet Lady",
    DurationSeconds: 214,
    ReleaseDate: "1975-11-01",
    Genre: { ID: 1, Name: "Rock" },
    AudioURL: "",
    Creator: { ID: 1, Name: "Queen" },
  },
  {
    ID: 7,
    Title: "Seaside Rendezvous",
    DurationSeconds: 131,
    ReleaseDate: "1975-11-01",
    Genre: { ID: 1, Name: "Rock" },
    AudioURL: "",
    Creator: { ID: 1, Name: "Queen" },
  },
  {
    ID: 8,
    Title: "The Prophet's Song",
    DurationSeconds: 513,
    ReleaseDate: "1975-11-01",
    Genre: { ID: 1, Name: "Rock" },
    AudioURL: "",
    Creator: { ID: 1, Name: "Queen" },
  },
  {
    ID: 9,
    Title: "Love of My Life",
    DurationSeconds: 221,
    ReleaseDate: "1975-11-01",
    Genre: { ID: 1, Name: "Rock" },
    AudioURL: "",
    Creator: { ID: 1, Name: "Queen" },
  },
  {
    ID: 10,
    Title: "Good Company",
    DurationSeconds: 191,
    ReleaseDate: "1975-11-01",
    Genre: { ID: 1, Name: "Rock" },
    AudioURL: "",
    Creator: { ID: 1, Name: "Queen" },
  },
  {
    ID: 11,
    Title: "God Save the Queen",
    DurationSeconds: 74,
    ReleaseDate: "1975-11-01",
    Genre: { ID: 1, Name: "Rock" },
    AudioURL: "",
    Creator: { ID: 1, Name: "Queen" },
  },
  {
    ID: 12,
    Title: "Flatland",
    DurationSeconds: 390,
    ReleaseDate: "2013-05-06",
    Genre: { ID: 2, Name: "Techno" },
    AudioURL: "https://archive.org/download/NS050/09-NS050-Age_Journey.mp3",
    Creator: { ID: 3, Name: "Objekt" },
  },
  {
    ID: 13,
    Title: "Phantom Freq.",
    DurationSeconds: 312,
    ReleaseDate: "2015-03-20",
    Genre: { ID: 3, Name: "Electronic" },
    AudioURL: "",
    Creator: { ID: 2, Name: "HVOB" },
  },
  {
    ID: 14,
    Title: "Promises",
    DurationSeconds: 425,
    ReleaseDate: "2021-03-26",
    Genre: { ID: 3, Name: "Electronic" },
    AudioURL: "",
    Creator: { ID: 4, Name: "Floating Points" },
  },
  {
    ID: 15,
    Title: "Midnight City",
    DurationSeconds: 244,
    ReleaseDate: "2011-10-17",
    Genre: { ID: 4, Name: "Synthpop" },
    AudioURL: "",
    Creator: { ID: 5, Name: "M83" },
  },
  {
    ID: 16,
    Title: "Bloom",
    DurationSeconds: 298,
    ReleaseDate: "2014-04-01",
    Genre: { ID: 3, Name: "Electronic" },
    AudioURL: "",
    Creator: { ID: 6, Name: "Odesza" },
  },
];
// pour la CoverURL, il faut me retourner si une cover existe par ca on entend :
// 			renvoyer url chanson si existante
// 			sinon renvoyer url de la cover de l'album
// 			sinon renvoyer url de la cover de l'artiste
// 			sinon  renvoyer null

// ─── Collections (albums) ─────────────────────────────────────────────────────

export const mockCollections = [
  {
    ID: 1,
    Name: "A Night at the Opera",
    CoverURL: null,
    Tracks: mockTracks.filter((t) => t.ID >= 1 && t.ID <= 11),
  },
  {
    ID: 2,
    Name: "Nouveautés",
    CoverURL: null,
    Tracks: mockTracks.filter((t) => t.ID >= 12),
  },
];

// ─── Historique ───────────────────────────────────────────────────────────────

export const mockHistoryLogs = [
  { ID: 1, Track: mockTracks[4], StartedAt: "2026-03-13T20:14:00" },
  { ID: 2, Track: mockTracks[8], StartedAt: "2026-03-13T18:32:00" },
  { ID: 3, Track: mockTracks[2], StartedAt: "2026-03-13T10:05:00" },
  { ID: 4, Track: mockTracks[14], StartedAt: "2026-03-12T22:47:00" },
  { ID: 5, Track: mockTracks[11], StartedAt: "2026-03-11T16:20:00" },
  { ID: 6, Track: mockTracks[0], StartedAt: "2026-03-10T09:15:00" },
  { ID: 7, Track: mockTracks[15], StartedAt: "2026-03-08T21:00:00" },
  { ID: 8, Track: mockTracks[6], StartedAt: "2026-03-05T14:30:00" },
  { ID: 9, Track: mockTracks[13], StartedAt: "2026-02-28T19:45:00" },
  { ID: 10, Track: mockTracks[7], StartedAt: "2026-02-20T11:10:00" },
  { ID: 11, Track: mockTracks[3], StartedAt: "2026-01-15T08:00:00" },
];

// ─── Playlists ────────────────────────────────────────────────────────────────

// GET /api/playlist/:id — jointure sidebar + playlistPage + threedots
export const mockPlaylists = [
  {
    ID: 1,
    Title: "Chill",
    Contents: [
      {
        TrackID: 13,
        Position: 1,
        Track: {
          ID: 13,
          Title: "Phantom Freq.",
          DurationSeconds: 312,
          AudioURL: "",
          Creator: { ID: 2, Name: "HVOB" },
        },
      },
      {
        TrackID: 14,
        Position: 2,
        Track: {
          ID: 14,
          Title: "Promises",
          DurationSeconds: 425,
          AudioURL: "",
          Creator: { ID: 4, Name: "Floating Points" },
        },
      },
      {
        TrackID: 16,
        Position: 3,
        Track: {
          ID: 16,
          Title: "Bloom",
          DurationSeconds: 298,
          AudioURL: "",
          Creator: { ID: 6, Name: "Odesza" },
        },
      },
    ],
  },
  {
    ID: 2,
    Title: "Techno",
    Contents: [
      {
        TrackID: 12,
        Position: 1,
        Track: {
          ID: 12,
          Title: "Flatland",
          DurationSeconds: 390,
          AudioURL: "",
          Creator: { ID: 3, Name: "Objekt" },
        },
      },
      {
        TrackID: 13,
        Position: 2,
        Track: {
          ID: 13,
          Title: "Phantom Freq.",
          DurationSeconds: 312,
          AudioURL: "",
          Creator: { ID: 2, Name: "HVOB" },
        },
      },
    ],
  },
  {
    ID: 3,
    Title: "Pour coder",
    Contents: [
      {
        TrackID: 15,
        Position: 1,
        Track: {
          ID: 15,
          Title: "Midnight City",
          DurationSeconds: 244,
          AudioURL: "",
          Creator: { ID: 5, Name: "M83" },
        },
      },
      {
        TrackID: 16,
        Position: 2,
        Track: {
          ID: 16,
          Title: "Bloom",
          DurationSeconds: 298,
          AudioURL: "",
          Creator: { ID: 6, Name: "Odesza" },
        },
      },
      {
        TrackID: 12,
        Position: 3,
        Track: {
          ID: 12,
          Title: "Flatland",
          DurationSeconds: 390,
          AudioURL: "",
          Creator: { ID: 3, Name: "Objekt" },
        },
      },
    ],
  },
  {
    ID: 4,
    Title: "Sport",
    Contents: [
      {
        TrackID: 5,
        Position: 1,
        Track: {
          ID: 5,
          Title: "Bohemian Rhapsody",
          DurationSeconds: 354,
          AudioURL: "",
          Creator: { ID: 1, Name: "Queen" },
        },
      },
      {
        TrackID: 12,
        Position: 2,
        Track: {
          ID: 12,
          Title: "Flatland",
          DurationSeconds: 390,
          AudioURL: "",
          Creator: { ID: 3, Name: "Objekt" },
        },
      },
      {
        TrackID: 13,
        Position: 3,
        Track: {
          ID: 13,
          Title: "Phantom Freq.",
          DurationSeconds: 312,
          AudioURL: "",
          Creator: { ID: 2, Name: "HVOB" },
        },
      },
    ],
  },
];

// ─── Likes ───────────────────────────────────────────────────────────────────

export const mockTracksLiked = [
  { ID: 1, Track: mockTracks[0] },
  { ID: 2, Track: mockTracks[2] },
  { ID: 3, Track: mockTracks[1] },
  { ID: 4, Track: mockTracks[3] },
];
