-- Drop analytics views
DROP VIEW IF EXISTS public.most_listened_genres_user;
DROP VIEW IF EXISTS public.most_listened_creators_user;
DROP VIEW IF EXISTS public.most_listened_collections_user;
DROP VIEW IF EXISTS public.most_listened_tracks_user;
DROP VIEW IF EXISTS public.most_listened_genres_site;
DROP VIEW IF EXISTS public.most_listened_creators_site;
DROP VIEW IF EXISTS public.most_listened_collections_site;
DROP VIEW IF EXISTS public.most_listened_tracks_site;
DROP VIEW IF EXISTS public.last_release_tracks;
-- Drop trigger
DROP TRIGGER IF EXISTS trigger_set_users_authentication_type ON users;
-- Drop function
DROP FUNCTION IF EXISTS public.set_users_authentication_type;
-- Drop tables
DROP TABLE IF EXISTS public.channel_members;
DROP TABLE IF EXISTS public.messages;
DROP TABLE IF EXISTS public.channels;
DROP TABLE IF EXISTS public.history_logs;
DROP TABLE IF EXISTS public.histories;
DROP TABLE IF EXISTS public.likes;
DROP TABLE IF EXISTS public.playlist_contents;
DROP TABLE IF EXISTS public.playlists;
DROP TABLE IF EXISTS public.friends;
DROP TABLE IF EXISTS public.tracks;
DROP TABLE IF EXISTS public.collections;
DROP TABLE IF EXISTS public.genres;
DROP TABLE IF EXISTS public.creators;
DROP TABLE IF EXISTS public.users;
DROP DOMAIN IF EXISTS text_10;
DROP DOMAIN IF EXISTS text_30;
DROP DOMAIN IF EXISTS text_120;
DROP DOMAIN IF EXISTS text_255;
DROP DOMAIN IF EXISTS text_510;
DROP DOMAIN IF EXISTS text_2048;
DROP DOMAIN IF EXISTS citext_255;
DROP EXTENSION IF EXISTS "pgcrypto";
DROP EXTENSION IF EXISTS "citext";
DROP EXTENSION IF EXISTS "pg_trgm";