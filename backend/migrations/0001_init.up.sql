-------------------------------------------------------------------------------
-- Extensions activation
-------------------------------------------------------------------------------
CREATE EXTENSION IF NOT EXISTS "pgcrypto";
CREATE EXTENSION IF NOT EXISTS "citext";
CREATE EXTENSION IF NOT EXISTS "pg_trgm";


-------------------------------------------------------------------------------
-- Domains creation
-------------------------------------------------------------------------------
CREATE DOMAIN citext_255 AS CITEXT CHECK (length(VALUE) <= 255);
CREATE DOMAIN text_10  AS TEXT CHECK (length(VALUE) <= 10);
CREATE DOMAIN text_30  AS TEXT CHECK (length(VALUE) <= 30);
CREATE DOMAIN text_120 AS TEXT CHECK (length(VALUE) <= 120);
CREATE DOMAIN text_255 AS TEXT CHECK (length(VALUE) <= 255);
CREATE DOMAIN text_510 AS TEXT CHECK (length(VALUE) <= 510);
CREATE DOMAIN text_2048 AS TEXT CHECK (length(VALUE) <= 2048);


-------------------------------------------------------------------------------
-- set users tables
-------------------------------------------------------------------------------
-- Table users
CREATE TABLE users (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	email citext_255 NOT NULL
		CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
	username text_30 NOT NULL,
	password_hash text_255 NULL,
	google_id text_255 NULL,
	authentification_type text_10 NOT NULL DEFAULT 'mail' CHECK (authentification_type IN ('mail', 'google')),
	role_name text_10 DEFAULT 'user' NOT NULL,
	avatar_url text_2048 NOT NULL DEFAULT '/assets/avatars/default.jpg',
	playlist_loop boolean DEFAULT true NOT NULL,
	playlist_random boolean DEFAULT false NOT NULL,
	queue_position bigint NULL,
	is_active boolean DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	updated_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT users_role_name CHECK (role_name IN ('admin','user','owner'))
);
-- Index creation
CREATE UNIQUE INDEX users_email_idx ON users(email);
CREATE UNIQUE INDEX users_username_idx ON users(username);
-- trigger && associate function creation
CREATE OR REPLACE FUNCTION set_users_authentication_type()
RETURNS trigger AS $$
BEGIN
	IF NEW.google_id IS NOT NULL THEN
		NEW.authentification_type := 'google';
	ELSIF NEW.password_hash IS NOT NULL THEN
		NEW.authentification_type := 'mail';
	ELSE
		NEW.authentification_type := 'mail';
	END IF;

	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_set_users_authentication_type
BEFORE INSERT OR UPDATE ON users
FOR EACH ROW
EXECUTE FUNCTION set_users_authentication_type();

-------------------------------------------------------------------------------
-- set tracks tables
-------------------------------------------------------------------------------
-- Table creators
CREATE TABLE creators (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name citext_255 NOT NULL UNIQUE,
	cover_url text_2048 NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	updated_at timestamptz DEFAULT now() NOT NULL
);
-------------------------------------------------------------------------------
-- Table genres
CREATE TABLE genres (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name citext_255 NOT NULL UNIQUE,
	parent_name citext_255 NULL DEFAULT NULL,
	root_genre citext_255 NOT NULL, 
	broad_family citext_255 NOT NULL,
	is_ambiguous boolean NOT NULL DEFAULT false,
	cover_url text_2048 NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	updated_at timestamptz DEFAULT now() NOT NULL
);
-------------------------------------------------------------------------------
-- Table collections
CREATE TABLE collections (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name citext_255 NOT NULL UNIQUE,
	cover_url text_2048 NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	updated_at timestamptz DEFAULT now() NOT NULL
);
-------------------------------------------------------------------------------
-- Table tracks
CREATE TABLE tracks (
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	type text_10 NOT NULL DEFAULT 'music' CHECK (type IN ('music', 'podcast')),
	title citext_255 NOT NULL,
	duration_seconds int4 NOT NULL CHECK ((duration_seconds > 0)),
	release_date date NULL DEFAULT NULL,
	creator_id bigint NOT NULL DEFAULT 1 REFERENCES creators(Id) ON DELETE SET DEFAULT,
	genre_id	bigint NOT NULL DEFAULT 1 REFERENCES genres(Id) ON DELETE SET DEFAULT,
	collection_id bigint NOT NULL DEFAULT 1 REFERENCES collections(Id) ON DELETE SET DEFAULT,
	audio_url text_2048 NOT NULL,
	cover_url text_2048 NULL,
	source_url	text_2048 NULL,
	license_code text_30 NULL,
	attribution_text text_2048 NULL,
	is_dead_link boolean NOT NULL DEFAULT false,
	created_at timestamptz DEFAULT now() NOT NULL,
	updated_at timestamptz DEFAULT now() NOT NULL
);
-- Indexs creation
CREATE INDEX tracks_type_idx ON tracks(type);
CREATE INDEX tracks_creator_idx ON tracks(creator_id);
CREATE INDEX tracks_genre_idx ON tracks(genre_id);
CREATE INDEX tracks_collection_idx ON tracks(collection_id);
CREATE INDEX tracks_is_dead_link_idx ON tracks(is_dead_link);


-------------------------------------------------------------------------------
-- set like list tables
-------------------------------------------------------------------------------
-- Table friends
CREATE TABLE friends (
	user_id_low  bigint NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	user_id_high bigint NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	request_status text_10 DEFAULT 'pending' NOT NULL,
	created_by bigint NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	created_at timestamptz NOT NULL DEFAULT now(),
	CONSTRAINT friends_pk PRIMARY KEY (user_id_low, user_id_high),
	CONSTRAINT friends_order CHECK (user_id_low < user_id_high),
	CONSTRAINT friends_created_by_in_pair CHECK (created_by IN (user_id_low, user_id_high)),
	CONSTRAINT friends_request_status CHECK (request_status IN ('pending','rejected','granted', 'blocked'))
);
-- Indexs creation
CREATE INDEX friends_low_idx ON friends(user_id_low);
CREATE INDEX friends_high_idx ON friends(user_id_high);
-------------------------------------------------------------------------------
-- Table playlists
CREATE TABLE playlists (
	id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
	user_id bigint NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	title text_120 NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	updated_at timestamptz DEFAULT now() NOT NULL
);
-- Indexs creation
CREATE UNIQUE INDEX playlists_user_id_title_idx ON playlists(user_id, title);
-------------------------------------------------------------------------------
-- Table playlist_contents
CREATE TABLE playlist_contents (
	playlist_id bigint NOT NULL REFERENCES playlists(id) ON DELETE CASCADE,
	track_id bigint NOT NULL REFERENCES tracks(id) ON DELETE CASCADE,
	position bigint NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	updated_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT playlist_contents_pk PRIMARY KEY (playlist_id, track_id),
	CONSTRAINT playlist_contents_position_uq UNIQUE (playlist_id, position),
	CONSTRAINT playlists_check CHECK (position > 0)
);
-- Indexs creation
CREATE INDEX playlist_contents_track_idx ON playlist_contents(track_id);
CREATE INDEX playlist_contents_playlist_position_idx ON playlist_contents(playlist_id, position);
-------------------------------------------------------------------------------
-- Table queue_items
CREATE TABLE queue_items (
	id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	user_id bigint NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	track_id bigint NOT NULL REFERENCES tracks(id) ON DELETE CASCADE,
	position bigint NOT NULL CHECK (position > 0),
	added_at timestamptz NOT NULL DEFAULT now()
);
-- Indexs creation
CREATE UNIQUE INDEX queue_items_user_position_uq ON queue_items(user_id, position);
CREATE INDEX queue_items_user_track_idx ON queue_items(user_id, track_id);
-------------------------------------------------------------------------------
-- Table likes
CREATE TABLE public.likes (
	track_id bigint NOT NULL REFERENCES tracks(id) ON DELETE CASCADE,
	user_id bigint NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	CONSTRAINT likes_pk PRIMARY KEY (track_id, user_id)
);
-- Indexs creation
CREATE INDEX likes_user_idx ON likes(user_id);


-------------------------------------------------------------------------------
-- set history tables
-------------------------------------------------------------------------------
-- Table histories
CREATE TABLE public.histories (
	user_id bigint NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	track_id bigint NOT NULL REFERENCES tracks(id) ON DELETE CASCADE,
	last_started_at timestamptz NULL,
	last_ended_at   timestamptz NULL,
	last_position_seconds bigint NOT NULL DEFAULT 0 CHECK (last_position_seconds >= 0),
	last_seconds_listened bigint NOT NULL DEFAULT 0 CHECK (last_seconds_listened >= 0),
	play_count int4 NOT NULL DEFAULT 0 CHECK (play_count >= 0),
	total_seconds_listened bigint NOT NULL DEFAULT 0 CHECK (total_seconds_listened >= 0),
	last_completed boolean NOT NULL DEFAULT false,
	last_skipped boolean NOT NULL DEFAULT false,
	completed_count	int4 DEFAULT 0 NOT NULL CHECK (completed_count >= 0),
	skipped_count	int4 DEFAULT 0 NOT NULL CHECK (skipped_count >= 0),
	created_at timestamptz NOT NULL DEFAULT now(),
	updated_at timestamptz NOT NULL DEFAULT now(),
	CONSTRAINT histories_pk PRIMARY KEY (user_id, track_id),
	CONSTRAINT user_track_histories_end_check CHECK (last_ended_at IS NULL OR last_started_at IS NULL OR last_ended_at >= last_started_at),
	CONSTRAINT user_track_histories_xor CHECK (NOT (last_completed AND last_skipped))
);
-- Indexs creation
CREATE INDEX histories_user_last_started_idx ON public.histories (user_id, last_started_at DESC);
CREATE INDEX histories_track_last_started_idx ON public.histories (track_id, last_started_at DESC);
-------------------------------------------------------------------------------
-- Table history_logs
CREATE TABLE public.history_logs (
	id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
	user_id bigint NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	track_id bigint NOT NULL REFERENCES tracks(id) ON DELETE CASCADE,
	started_at timestamptz NULL,
	ended_at   timestamptz NULL,
	last_position_seconds bigint NOT NULL DEFAULT 0 CHECK (last_position_seconds >= 0),
	last_seconds_listened bigint NOT NULL DEFAULT 0 CHECK (last_seconds_listened >= 0),
	completed boolean NOT NULL DEFAULT false,
	skipped boolean NOT NULL DEFAULT false,
	created_at timestamptz NOT NULL DEFAULT now(),
	CONSTRAINT history_logs_pk PRIMARY KEY (id),
	CONSTRAINT user_track_history_logs_end_check CHECK (ended_at IS NULL OR started_at IS NULL OR ended_at >= started_at),
	CONSTRAINT user_track_history_logs_xor CHECK (NOT (completed AND skipped))
);
-- Indexs creation
CREATE INDEX history_logs_user_started_idx ON public.history_logs (user_id, started_at DESC);
CREATE INDEX history_logs_track_started_idx ON public.history_logs (track_id, started_at DESC);



-------------------------------------------------------------------------------
-- set messaging tables
-------------------------------------------------------------------------------
-- Table channels
CREATE TABLE channels (
 	id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	title text_120 NULL,
	is_private boolean NOT NULL DEFAULT true,
	is_individual boolean NOT NULL DEFAULT false,
	members_limit bigint NULL DEFAULT NULL CHECK (members_limit IS NULL OR members_limit > 0),
	indiv_user_low  BIGINT NULL REFERENCES public.users(id) ON DELETE CASCADE,
  	indiv_user_high BIGINT NULL REFERENCES public.users(id) ON DELETE CASCADE,
  	created_by BIGINT REFERENCES public.users(id) ON DELETE SET NULL,
  	created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  	updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
	CONSTRAINT channels_title_required CHECK (is_individual = true OR title IS NOT NULL),
	CONSTRAINT channels_indiv_fields_only_for_indiv
		CHECK ((is_individual = true AND indiv_user_low IS NOT NULL AND indiv_user_high IS NOT NULL)
      	OR
      	(is_individual = false AND indiv_user_low IS NULL AND indiv_user_high IS NULL)
    ),
	CONSTRAINT channels_indiv_order CHECK (
		(is_individual = true AND (indiv_user_low < indiv_user_high) AND members_limit = 2)
		OR
		(is_individual = false AND indiv_user_low IS NULL AND indiv_user_high IS NULL))
);
-- Indexs creation
CREATE UNIQUE INDEX channels_title_is_individual_idx ON channels(title, is_individual);
CREATE UNIQUE INDEX channels_indiv_unique_idx ON channels(indiv_user_low, indiv_user_high)
	WHERE is_individual = true;
-------------------------------------------------------------------------------
-- Table messages
CREATE TABLE messages (
	id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	channel_id BIGINT NOT NULL REFERENCES channels(id) ON DELETE CASCADE,
	sender_id BIGINT REFERENCES public.users(id) ON DELETE SET NULL,
	content text_510 NULL,
	created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
-- Indexs creation
CREATE INDEX messages_channel_created_idx ON messages(channel_id, created_at DESC);
CREATE INDEX messages_sender_idx ON messages(sender_id);
-------------------------------------------------------------------------------
-- Table channel_members
CREATE TABLE channel_members (
	channel_id bigint NOT NULL REFERENCES public.channels(id) ON DELETE CASCADE,
	user_id bigint NOT NULL REFERENCES public.users(id) ON DELETE CASCADE,
	role_name text_10 NOT NULL DEFAULT 'member' CHECK (role_name IN ('owner','admin','member')),
	last_read_message_id BIGINT NULL REFERENCES messages(id) ON DELETE SET NULL,
	joined_at TIMESTAMPTZ NOT NULL DEFAULT now(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
	CONSTRAINT channel_members_pk PRIMARY KEY(channel_id, user_id)
);
-- Indexs creation
CREATE INDEX channel_members_user_idx ON channel_members(user_id);

-------------------------------------------------------------------------------
-- set site analytics views
-------------------------------------------------------------------------------
-- view last_release_tracks
CREATE OR REPLACE VIEW public.last_release_tracks
AS SELECT t.id AS track_id,
    t.release_date,
    t.type,
    t.title,
    t.creator_id,
    c.name AS creator_name,
	t.genre_id,
    g.name AS genre_name,
    t.collection_id,
    a.name AS collection_name,
    t.audio_url,
    t.cover_url
   FROM tracks t
     JOIN creators c ON c.id = t.creator_id
     JOIN collections a ON a.id = t.collection_id
     JOIN genres g ON g.id = t.genre_id
	 WHERE t.is_dead_link = false
  ORDER BY t.release_date DESC NULLS LAST;
-------------------------------------------------------------------------------
-- view most_listened_tracks_site
CREATE OR REPLACE VIEW public.most_listened_tracks_site
AS SELECT h.track_id,
	t.type as "type",
	t.title,
	t.creator_id,
	c.name AS creator_name,
	t.audio_url,
	t.cover_url,
    sum(h.total_seconds_listened) AS total_time
   FROM histories h
   JOIN public.tracks t ON t.id = h.track_id
   JOIN creators c ON c.id = t.creator_id
   WHERE t.is_dead_link = false
  GROUP BY h.track_id, t.type, t.title, t.creator_id, c.name, t.audio_url, t.cover_url
  ORDER BY (sum(total_seconds_listened)) DESC;
-------------------------------------------------------------------------------
-- view most_listened_collections_site
CREATE OR REPLACE VIEW public.most_listened_collections_site
AS SELECT c.id AS collection_id,
    c.name AS collection_name,
    c.cover_url AS collection_cover_url,
    t.type as "type",
    sum(h.total_time) AS total_collection_time
   FROM collections c
     JOIN tracks t ON c.id = t.collection_id
     JOIN most_listened_tracks_site h ON t.id = h.track_id
  GROUP BY c.id, c.name, c.cover_url, t.type
  ORDER BY (sum(h.total_time)) DESC;
-------------------------------------------------------------------------------
-- view most_listened_creators_site
CREATE OR REPLACE VIEW public.most_listened_creators_site
AS SELECT c.id AS creator_id,
    c.name AS creator_name,
    c.cover_url AS creator_cover_url,
    t.type as "type",
    sum(h.total_time) AS total_creator_time
   FROM creators c
     JOIN tracks t ON c.id = t.creator_id
     JOIN most_listened_tracks_site h ON t.id = h.track_id
  GROUP BY c.id, c.name, c.cover_url, t.type
  ORDER BY (sum(h.total_time)) DESC;
-------------------------------------------------------------------------------
-- view most_listened_genres_site
CREATE OR REPLACE VIEW public.most_listened_genres_site
AS SELECT c.id AS genre_id,
    c.name AS genre_name,
    c.cover_url AS genre_cover_url,
    t.type,
    sum(h.total_time) AS total_genre_time
   FROM genres c
     JOIN tracks t ON c.id = t.genre_id
     JOIN most_listened_tracks_site h ON t.id = h.track_id
  GROUP BY c.id, c.name, c.cover_url, t.type
  ORDER BY (sum(h.total_time)) DESC;

-------------------------------------------------------------------------------
-- set user analytics views
-------------------------------------------------------------------------------
-- view most_listened_tracks_user
CREATE OR REPLACE VIEW public.most_listened_tracks_user
AS SELECT h.user_id,
    h.track_id,
    t.type AS "type",
	t.title,
	t.creator_id,
	c.name AS creator_name,
	t.audio_url,
	t.cover_url,
    sum(h.total_seconds_listened) AS total_time
   FROM histories h
   JOIN tracks t ON t.id = h.track_id
   JOIN creators c ON c.id = t.creator_id
   WHERE t.is_dead_link = false
  GROUP BY user_id, track_id, t.type, t.title, t.creator_id, c.name, t.audio_url, t.cover_url
  ORDER BY user_id, (sum(total_seconds_listened)) DESC;
-------------------------------------------------------------------------------
-- view most_listened_collections_user
CREATE OR REPLACE VIEW public.most_listened_collections_user
AS SELECT c.id AS collection_id,
    c.name AS collection_name,
    c.cover_url AS collection_cover_url,
    t.type as "type",
	h.user_id,
    sum(h.total_time) AS total_collection_time
   FROM collections c
     JOIN tracks t ON c.id = t.collection_id
     JOIN most_listened_tracks_user h ON t.id = h.track_id
  GROUP BY c.id, c.name, c.cover_url, t.type, h.user_id
  ORDER BY (sum(h.total_time)) DESC;
-------------------------------------------------------------------------------
-- view most_listened_creators_user
CREATE OR REPLACE VIEW public.most_listened_creators_user
AS SELECT c.id AS creator_id,
    c.name AS creator_name,
    c.cover_url AS creator_cover_url,
    t.type as "type",
	h.user_id,
    sum(h.total_time) AS total_creator_time
   FROM creators c
     JOIN tracks t ON c.id = t.creator_id
     JOIN most_listened_tracks_user h ON t.id = h.track_id
  GROUP BY c.id, c.name, c.cover_url, t.type, h.user_id
  ORDER BY (sum(h.total_time)) DESC;
-------------------------------------------------------------------------------
-- view most_listened_genres_user
CREATE OR REPLACE VIEW public.most_listened_genres_user
AS SELECT c.id AS genre_id,
    c.name AS genre_name,
    c.cover_url AS genre_cover_url,
    t.type as "type",
	h.user_id,
    sum(h.total_time) AS total_genre_time
   FROM genres c
     JOIN tracks t ON c.id = t.genre_id
     JOIN most_listened_tracks_user h ON t.id = h.track_id
  GROUP BY c.id, c.name, c.cover_url, t.type, h.user_id
  ORDER BY (sum(h.total_time)) DESC;