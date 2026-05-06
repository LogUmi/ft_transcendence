-- Derived from MusicBrainz /ws/2/genre/all?fmt=txt on 2026-03-13
-- Heuristic hierarchy for recommendation bootstrapping.
-- Assumes table: genres(name text primary key, parent_name text null, root_genre text not null, broad_family text not null, is_ambiguous boolean not null default false)

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('2 tone', NULL, '2 tone', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('2-step', NULL, '2-step', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('3-step', NULL, '3-step', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('aak', NULL, 'aak', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('abhang', NULL, 'abhang', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('aboio', NULL, 'aboio', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hip hop', NULL, 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('abstract hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acholitronix', NULL, 'acholitronix', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('breaks', NULL, 'breaks', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acid breaks', 'breaks', 'breaks', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('house', NULL, 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acid house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jazz', NULL, 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acid jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rock', NULL, 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acid rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('techno', NULL, 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acid techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trance', NULL, 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acid trance', 'trance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acidcore', NULL, 'acidcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acousmatic', NULL, 'acousmatic', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('blues', NULL, 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acoustic blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chicago blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acoustic chicago blues', 'chicago blues', 'blues', 'blues', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acoustic rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('texas blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('acoustic texas blues', 'texas blues', 'blues', 'blues', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('adhunik geet', NULL, 'adhunik geet', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('afoxê', NULL, 'afoxê', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('african blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('afro house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('afro rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trap', NULL, 'trap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('afro trap', 'trap', 'trap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('afro-cuban jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('afro-funk', NULL, 'afro-funk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('afro-jazz', NULL, 'afro-jazz', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('afro-zouk', NULL, 'afro-zouk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('afrobeat', NULL, 'afrobeat', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('afrobeats', NULL, 'afrobeats', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('afropiano', NULL, 'afropiano', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('afroswing', NULL, 'afroswing', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('agbadza', NULL, 'agbadza', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('agbekor', NULL, 'agbekor', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('aggrotech', NULL, 'aggrotech', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('agronejo', NULL, 'agronejo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ahwash', NULL, 'ahwash', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('aita', NULL, 'aita', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('akishibu-kei', NULL, 'akishibu-kei', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('al jeel', NULL, 'al jeel', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('aleke', NULL, 'aleke', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('algerian chaabi', NULL, 'algerian chaabi', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('algorave', NULL, 'algorave', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('alloukou', NULL, 'alloukou', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('alpenrock', NULL, 'alpenrock', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('alté', NULL, 'alté', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('country', NULL, 'country', 'country', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('alternative country', 'country', 'country', 'country', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dance', NULL, 'dance', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('alternative dance', 'dance', 'dance', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('folk', NULL, 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('alternative folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('alternative hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('metal', NULL, 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('alternative metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pop', NULL, 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('alternative pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('punk', NULL, 'punk', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('alternative punk', 'punk', 'punk', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('r&b', NULL, 'r&b', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('alternative r&b', 'r&b', 'r&b', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('alternative rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('amapiano', NULL, 'amapiano', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ambasse bey', NULL, 'ambasse bey', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ambient', NULL, 'ambient', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('americana', NULL, 'americana', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ambient americana', 'americana', 'americana', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dub', NULL, 'dub', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ambient dub', 'dub', 'dub', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ambient house', 'house', 'house', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ambient noise wall', NULL, 'ambient noise wall', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('plugg', NULL, 'plugg', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ambient plugg', 'plugg', 'plugg', 'hip hop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ambient pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ambient techno', 'techno', 'techno', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ambient trance', 'trance', 'trance', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ambrosian chant', NULL, 'ambrosian chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan', NULL, 'gamelan', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('american gamelan', 'gamelan', 'gamelan', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('american primitive guitar', NULL, 'american primitive guitar', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('amigacore', NULL, 'amigacore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('anarcho-punk', NULL, 'anarcho-punk', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('anatolian rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('classical', NULL, 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('andalusian classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('new age', 'ambient', 'ambient', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('andean new age', 'new age', 'ambient', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('anglican chant', NULL, 'anglican chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('animal sounds', NULL, 'animal sounds', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('anti-folk', NULL, 'anti-folk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('aor', NULL, 'aor', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('apala', NULL, 'apala', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('appalachian folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('aquacrunk', NULL, 'aquacrunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('arabesk', NULL, 'arabesk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('arabesk rap', NULL, 'arabesk rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('arena rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('arrocha', NULL, 'arrocha', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funk', NULL, 'funk', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('arrocha funk', 'funk', 'funk', 'r&b/soul', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sertanejo', NULL, 'sertanejo', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('arrocha sertanejo', 'sertanejo', 'sertanejo', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('arrochadeira', NULL, 'arrochadeira', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ars antiqua', NULL, 'ars antiqua', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ars nova', NULL, 'ars nova', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ars subtilior', NULL, 'ars subtilior', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('art pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('art punk', 'punk', 'punk', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('art rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('art song', NULL, 'art song', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('artcore', NULL, 'artcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ashkenazi cantorial music', NULL, 'ashkenazi cantorial music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('asian rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('asmr', NULL, 'asmr', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('assiko', NULL, 'assiko', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('black metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('atmospheric black metal', 'black metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electronic', NULL, 'electronic', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('drum and bass', 'electronic', 'electronic', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('atmospheric drum and bass', 'drum and bass', 'electronic', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sludge metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('atmospheric sludge metal', 'sludge metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('audio documentary', NULL, 'audio documentary', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('audio drama', NULL, 'audio drama', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('autonomic', NULL, 'autonomic', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('avant-folk', NULL, 'avant-folk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('avant-garde', NULL, 'avant-garde', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('avant-garde jazz', 'jazz', 'jazz', 'jazz', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('avant-garde metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('avant-garde pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('avant-prog', NULL, 'avant-prog', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('avanzada', NULL, 'avanzada', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('avtorskaya pesnya', NULL, 'avtorskaya pesnya', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('axé', NULL, 'axé', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bacardi', NULL, 'bacardi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bachata', NULL, 'bachata', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bachatón', NULL, 'bachatón', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bagad', NULL, 'bagad', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bagatelle', NULL, 'bagatelle', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('baguala', NULL, 'baguala', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('baião', NULL, 'baião', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('baila', NULL, 'baila', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('baisha xiyue', NULL, 'baisha xiyue', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('baithak gana', NULL, 'baithak gana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bakersfield sound', NULL, 'bakersfield sound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('balani show', NULL, 'balani show', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('balearic beat', NULL, 'balearic beat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('balearic trance', 'trance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('balinese gamelan', 'gamelan', 'gamelan', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('balitaw', NULL, 'balitaw', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ballad', NULL, 'ballad', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('opera', NULL, 'opera', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ballad opera', 'opera', 'opera', 'classical/opera', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ballet', NULL, 'ballet', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ballet de cour', NULL, 'ballet de cour', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ballroom house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('club', NULL, 'club', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('baltimore club', 'club', 'club', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bambuco', NULL, 'bambuco', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('banda sinaloense', NULL, 'banda sinaloense', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bandari', NULL, 'bandari', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bandinha', NULL, 'bandinha', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('banga', NULL, 'banga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bantengan', NULL, 'bantengan', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('baqashot', NULL, 'baqashot', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('barber beats', NULL, 'barber beats', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('barbershop', NULL, 'barbershop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bard rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bardcore', NULL, 'bardcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('baroque', NULL, 'baroque', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('baroque pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('baroque suite', NULL, 'baroque suite', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('soca', NULL, 'soca', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bashment soca', 'soca', 'soca', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bass house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bassline', NULL, 'bassline', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('batida', NULL, 'batida', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('batidão romântico', NULL, 'batidão romântico', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('batonebi songs', NULL, 'batonebi songs', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('battle rap', NULL, 'battle rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('battle record', NULL, 'battle record', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('batucada', NULL, 'batucada', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('batuque', NULL, 'batuque', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('baul gaan', NULL, 'baul gaan', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beach music', NULL, 'beach music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beat bolha', NULL, 'beat bolha', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beat bruxaria', NULL, 'beat bruxaria', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beat fino', NULL, 'beat fino', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beat music', NULL, 'beat music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('poetry', NULL, 'poetry', 'spoken/comedy', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beat poetry', 'poetry', 'poetry', 'spoken/comedy', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beat rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beatboxing', NULL, 'beatboxing', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beatdown hardcore', NULL, 'beatdown hardcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bebop', NULL, 'bebop', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bedroom pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beijing opera', 'opera', 'opera', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bélé', NULL, 'bélé', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('belgian techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bend-skin', NULL, 'bend-skin', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beneventan chant', NULL, 'beneventan chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('benga', NULL, 'benga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beni', NULL, 'beni', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('benna', NULL, 'benna', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('beompae', NULL, 'beompae', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bérite club', 'club', 'club', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('berlin school', NULL, 'berlin school', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bhajan', NULL, 'bhajan', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bhangra', NULL, 'bhangra', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bhavageethe', NULL, 'bhavageethe', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bhojpuri pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('big band', NULL, 'big band', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('big beat', NULL, 'big beat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('big room house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('big room trance', 'trance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('biguine', NULL, 'biguine', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bikutsi', NULL, 'bikutsi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('binaural beats', NULL, 'binaural beats', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('biraha', NULL, 'biraha', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('birdsong', NULL, 'birdsong', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('birmingham sound', NULL, 'birmingham sound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bit music', NULL, 'bit music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bitpop', NULL, 'bitpop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('black ''n'' roll', NULL, 'black ''n'' roll', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('black ambient', 'ambient', 'ambient', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('black midi', NULL, 'black midi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('noise', NULL, 'noise', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('black noise', 'noise', 'noise', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('blackened crust', NULL, 'blackened crust', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('death metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('blackened death metal', 'death metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('blackgaze', NULL, 'blackgaze', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bleep techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('soul', NULL, 'soul', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('blue-eyed soul', 'soul', 'soul', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bluegrass', NULL, 'bluegrass', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gospel', NULL, 'gospel', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bluegrass gospel', 'gospel', 'gospel', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('blues rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bocet', NULL, 'bocet', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('boduberu', NULL, 'boduberu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('boedra', NULL, 'boedra', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bogino duu', NULL, 'bogino duu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bolero', NULL, 'bolero', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bolero español', NULL, 'bolero español', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bolero son', NULL, 'bolero son', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bolero-beat', NULL, 'bolero-beat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bomba', NULL, 'bomba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bomba del chota', NULL, 'bomba del chota', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bongo flava', NULL, 'bongo flava', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('boogaloo', NULL, 'boogaloo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('boogie', NULL, 'boogie', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('boogie rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('boogie-woogie', NULL, 'boogie-woogie', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('boom bap', NULL, 'boom bap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bossa nova', NULL, 'bossa nova', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bounce', NULL, 'bounce', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bounce beat', NULL, 'bounce beat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bouncy techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bouyon', NULL, 'bouyon', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('boyfriend country', 'country', 'country', 'country', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('brass band', NULL, 'brass band', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('brazilian bass', NULL, 'brazilian bass', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('phonk', NULL, 'phonk', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('brazilian phonk', 'phonk', 'phonk', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('break-in', NULL, 'break-in', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('breakbeat', NULL, 'breakbeat', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('breakbeat hardcore', NULL, 'breakbeat hardcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('breakbeat kota', NULL, 'breakbeat kota', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('breakcore', NULL, 'breakcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('breakstep', NULL, 'breakstep', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('brega', NULL, 'brega', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('calypso', NULL, 'calypso', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('brega calypso', 'calypso', 'calypso', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('brega funk', 'funk', 'funk', 'r&b/soul', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('briddim', NULL, 'briddim', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('brill building', NULL, 'brill building', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('brit funk', 'funk', 'funk', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('britcore', NULL, 'britcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('british blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('british brass band', 'brass band', 'brass band', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('folk rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('british folk rock', 'folk rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('british rhythm & blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('britpop', NULL, 'britpop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bro-country', NULL, 'bro-country', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('broadband noise', 'noise', 'noise', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('broken beat', NULL, 'broken beat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('broken transmission', NULL, 'broken transmission', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dubstep', 'electronic', 'electronic', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('brostep', 'dubstep', 'electronic', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('brutal death metal', 'death metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('brutal prog', NULL, 'brutal prog', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bubblegum bass', NULL, 'bubblegum bass', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bubblegum dance', 'dance', 'dance', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bubblegum pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bubbling', NULL, 'bubbling', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bubbling house', 'house', 'house', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('buchiage trance', 'trance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('budots', NULL, 'budots', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bulería', NULL, 'bulería', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bullerengue', NULL, 'bullerengue', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('burger-highlife', NULL, 'burger-highlife', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('burmese classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('burmese mono', NULL, 'burmese mono', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('burmese stereo', NULL, 'burmese stereo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('burning spirits', NULL, 'burning spirits', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('burrakatha', NULL, 'burrakatha', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('bytebeat', NULL, 'bytebeat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('byzantine chant', NULL, 'byzantine chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('c-pop', NULL, 'c-pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('c86', NULL, 'c86', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ca trù', NULL, 'ca trù', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cabaret', NULL, 'cabaret', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zouk', NULL, 'zouk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cabo zouk', 'zouk', 'zouk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cadence lypso', NULL, 'cadence lypso', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cadence rampa', NULL, 'cadence rampa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cải lương', NULL, 'cải lương', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cajun', NULL, 'cajun', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cakewalk', NULL, 'cakewalk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('čalgija', NULL, 'čalgija', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('calipso venezolano', NULL, 'calipso venezolano', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('campursari', NULL, 'campursari', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('campus folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('canción melódica', NULL, 'canción melódica', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('candombe', NULL, 'candombe', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('candombe beat', NULL, 'candombe beat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cantata', NULL, 'cantata', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cante alentejano', NULL, 'cante alentejano', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('canterbury scene', NULL, 'canterbury scene', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('canto a lo poeta', NULL, 'canto a lo poeta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('canto cardenche', NULL, 'canto cardenche', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('canto degli alpini', NULL, 'canto degli alpini', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cantonese opera', 'opera', 'opera', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cantopop', NULL, 'cantopop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cantoria', NULL, 'cantoria', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cantu a chiterra', NULL, 'cantu a chiterra', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cantu a tenore', NULL, 'cantu a tenore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('canzona', NULL, 'canzona', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('canzone d''autore', NULL, 'canzone d''autore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('canzone napoletana', NULL, 'canzone napoletana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('canzone neomelodica', NULL, 'canzone neomelodica', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cape breton fiddling', NULL, 'cape breton fiddling', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cape jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('caporal', NULL, 'caporal', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('capriccio', NULL, 'capriccio', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('carimbó', NULL, 'carimbó', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('carnatic classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('carnavalito', NULL, 'carnavalito', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('carranga', NULL, 'carranga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('celtic', NULL, 'celtic', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('celtic chant', NULL, 'celtic chant', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electronica', NULL, 'electronica', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('celtic electronica', 'electronica', 'electronica', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('celtic metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('celtic new age', 'new age', 'ambient', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('celtic punk', 'punk', 'punk', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('celtic rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('central asian throat singing', NULL, 'central asian throat singing', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chacarera', NULL, 'chacarera', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chachachá', NULL, 'chachachá', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chalga', NULL, 'chalga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chamamé', NULL, 'chamamé', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chamamé tropical', NULL, 'chamamé tropical', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chamarrita açoriana', NULL, 'chamarrita açoriana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chamarrita rioplatense', NULL, 'chamarrita rioplatense', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chamber folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chamber pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('champeta', NULL, 'champeta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('changa tuki', NULL, 'changa tuki', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('change ringing', NULL, 'change ringing', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('changjak gugak', NULL, 'changjak gugak', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('changüí', NULL, 'changüí', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chanson à texte', NULL, 'chanson à texte', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chanson française', NULL, 'chanson française', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chanson québécoise', NULL, 'chanson québécoise', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chanson réaliste', NULL, 'chanson réaliste', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chaozhou xianshi', NULL, 'chaozhou xianshi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chap hop', NULL, 'chap hop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('character piece', NULL, 'character piece', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('charanga', NULL, 'charanga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chazzanut', NULL, 'chazzanut', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chèo', NULL, 'chèo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chicago bop', NULL, 'chicago bop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('drill', NULL, 'drill', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chicago drill', 'drill', 'drill', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chicago house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('polka', NULL, 'polka', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chicago polka', 'polka', 'polka', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chicago soul', 'soul', 'soul', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chicano rap', NULL, 'chicano rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chicha', NULL, 'chicha', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('children''s music', NULL, 'children''s music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chilena', NULL, 'chilena', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chillout', NULL, 'chillout', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chillstep', NULL, 'chillstep', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chillsynth', NULL, 'chillsynth', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('wave', NULL, 'wave', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chillwave', 'wave', 'wave', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chimayche', NULL, 'chimayche', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chimurenga', NULL, 'chimurenga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chinese classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chinese literati music', NULL, 'chinese literati music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chinese opera', 'opera', 'opera', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chinese revolutionary opera', 'opera', 'opera', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chipmunk soul', 'soul', 'soul', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chiptune', NULL, 'chiptune', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chöd', NULL, 'chöd', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chopped and screwed', NULL, 'chopped and screwed', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chopper', NULL, 'chopper', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('symphony', NULL, 'symphony', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('choral symphony', 'symphony', 'symphony', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('choro', NULL, 'choro', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chotis madrileño', NULL, 'chotis madrileño', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('christian hardcore', NULL, 'christian hardcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('christian hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('christian metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('christian rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('christmas music', NULL, 'christmas music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('church music', NULL, 'church music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chutney', NULL, 'chutney', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('chutney soca', 'soca', 'soca', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cilokaq', NULL, 'cilokaq', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cinematic classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ciranda', NULL, 'ciranda', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('march', NULL, 'march', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('circus march', 'march', 'march', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('city pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('classic blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('classic country', 'country', 'country', 'country', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('classic jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ragtime', NULL, 'ragtime', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('classic ragtime', 'ragtime', 'ragtime', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('classic rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('classical crossover', NULL, 'classical crossover', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('classical period', NULL, 'classical period', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('close harmony', NULL, 'close harmony', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cloud rap', NULL, 'cloud rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cocktail nation', NULL, 'cocktail nation', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('coco', NULL, 'coco', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('coke rap', NULL, 'coke rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('coladeira', NULL, 'coladeira', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('coldwave', 'wave', 'wave', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('colindă', NULL, 'colindă', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('colour bass', NULL, 'colour bass', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('comédie-ballet', NULL, 'comédie-ballet', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('comedy', NULL, 'comedy', 'spoken/comedy', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('comedy hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('comedy rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('comfy synth', NULL, 'comfy synth', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('compas', NULL, 'compas', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('complextro', NULL, 'complextro', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('concert band', NULL, 'concert band', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('concertina band', NULL, 'concertina band', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('concerto', NULL, 'concerto', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('concerto for orchestra', NULL, 'concerto for orchestra', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('concerto grosso', NULL, 'concerto grosso', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('conducted improvisation', NULL, 'conducted improvisation', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('conga', NULL, 'conga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rumba', NULL, 'rumba', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('congolese rumba', 'rumba', 'rumba', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('conscious hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('contemporary christian', NULL, 'contemporary christian', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('contemporary classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('contemporary country', 'country', 'country', 'country', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('contemporary folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('contemporary gospel', 'gospel', 'gospel', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('contemporary jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('contemporary r&b', 'r&b', 'r&b', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('contenance angloise', NULL, 'contenance angloise', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('contra', NULL, 'contra', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cool jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('coon song', NULL, 'coon song', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('copla', NULL, 'copla', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('corrido', NULL, 'corrido', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('corrido tumbado', NULL, 'corrido tumbado', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cosmic country', 'country', 'country', 'country', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('country and irish', NULL, 'country and irish', 'country', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('country blues', 'blues', 'blues', 'blues', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('country boogie', 'boogie', 'boogie', 'country', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('country folk', 'folk', 'folk', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('country gospel', 'gospel', 'gospel', 'country', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('country pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('country rap', NULL, 'country rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('country rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('country soul', 'soul', 'soul', 'country', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('yodeling', NULL, 'yodeling', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('country yodeling', 'yodeling', 'yodeling', 'country', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('countrypolitan', NULL, 'countrypolitan', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('coupé-décalé', NULL, 'coupé-décalé', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cowboy poetry', 'poetry', 'poetry', 'spoken/comedy', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cowpunk', NULL, 'cowpunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('crack rock steady', NULL, 'crack rock steady', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('crime jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('crossbreed', NULL, 'crossbreed', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('crossover jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('crossover prog', NULL, 'crossover prog', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('crossover thrash', NULL, 'crossover thrash', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cruise', NULL, 'cruise', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('crunk', NULL, 'crunk', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('crunkcore', NULL, 'crunkcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('crust punk', 'punk', 'punk', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('csárdás', NULL, 'csárdás', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cuarteto', NULL, 'cuarteto', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cubatón', NULL, 'cubatón', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cuddlecore', NULL, 'cuddlecore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cueca', NULL, 'cueca', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia', NULL, 'cumbia', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia amazónica', NULL, 'cumbia amazónica', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia argentina', NULL, 'cumbia argentina', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia chilena', 'chilena', 'chilena', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia colombiana', NULL, 'cumbia colombiana', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia mexicana', NULL, 'cumbia mexicana', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia norteña mexicana', NULL, 'cumbia norteña mexicana', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia peruana', NULL, 'cumbia peruana', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia rebajada', NULL, 'cumbia rebajada', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia salvadoreña', NULL, 'cumbia salvadoreña', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia santafesina', NULL, 'cumbia santafesina', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia sonidera', NULL, 'cumbia sonidera', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia turra', NULL, 'cumbia turra', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbia villera', NULL, 'cumbia villera', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cumbiatón', NULL, 'cumbiatón', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cuplé', NULL, 'cuplé', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('currulao', NULL, 'currulao', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cyber metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cybergrind', NULL, 'cybergrind', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('cyberpunk', NULL, 'cyberpunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('d-beat', NULL, 'd-beat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dabke', NULL, 'dabke', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dance-pop', NULL, 'dance-pop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dance-punk', NULL, 'dance-punk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dance-punk revival', NULL, 'dance-punk revival', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dance-rock', NULL, 'dance-rock', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dancefloor drum and bass', 'drum and bass', 'electronic', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dancehall', NULL, 'dancehall', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dangak', NULL, 'dangak', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dangdut', NULL, 'dangdut', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('danmono', NULL, 'danmono', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dansband', NULL, 'dansband', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dansktop', NULL, 'dansktop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('danzón', NULL, 'danzón', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dariacore', NULL, 'dariacore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dark ambient', 'ambient', 'ambient', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dark cabaret', 'cabaret', 'cabaret', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('disco', NULL, 'disco', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dark disco', 'disco', 'disco', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electro', NULL, 'electro', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dark electro', 'electro', 'electro', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dark folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dark jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dark plugg', 'plugg', 'plugg', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psytrance', 'trance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dark psytrance', 'psytrance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dark wave', 'wave', 'wave', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('darkcore', NULL, 'darkcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('edm', NULL, 'edm', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('darkcore edm', 'edm', 'edm', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('darkstep', NULL, 'darkstep', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('darksynth', NULL, 'darksynth', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('data sonification', NULL, 'data sonification', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('death ''n'' roll', NULL, 'death ''n'' roll', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('industrial', NULL, 'industrial', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('death industrial', 'industrial', 'industrial', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('doom metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('death-doom metal', 'doom metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deathchant hardcore', NULL, 'deathchant hardcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deathcore', NULL, 'deathcore', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deathgrind', NULL, 'deathgrind', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deathrock', NULL, 'deathrock', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deathstep', NULL, 'deathstep', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dechovka', NULL, 'dechovka', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deconstructed club', 'club', 'club', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deejay', NULL, 'deejay', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deep drum and bass', 'drum and bass', 'electronic', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deep funk', 'funk', 'funk', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deep house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deep soul', 'soul', 'soul', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deep tech', NULL, 'deep tech', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('deep techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('delta blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dembow', NULL, 'dembow', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('demostyle', NULL, 'demostyle', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dennery segment', NULL, 'dennery segment', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('denpa', NULL, 'denpa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('depressive black metal', 'black metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('descarga', NULL, 'descarga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('desert blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('desert rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('desgarrada', NULL, 'desgarrada', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('detroit techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('detroit trap', 'trap', 'trap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dhaanto', NULL, 'dhaanto', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dhol tasha', NULL, 'dhol tasha', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dhrupad', NULL, 'dhrupad', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('digicore', NULL, 'digicore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('digital cumbia', 'cumbia', 'cumbia', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('digital fusion', NULL, 'digital fusion', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('digital hardcore', NULL, 'digital hardcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dikir barat', NULL, 'dikir barat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dimotiko', NULL, 'dimotiko', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dirty south', NULL, 'dirty south', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('disco polo', NULL, 'disco polo', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dissonant black metal', 'black metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dissonant death metal', 'death metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('diva house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('divertissement', NULL, 'divertissement', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dixieland', NULL, 'dixieland', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('djanba', NULL, 'djanba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('djent', NULL, 'djent', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('doble paso', NULL, 'doble paso', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dobrado', NULL, 'dobrado', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('doina', NULL, 'doina', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dondang sayang', NULL, 'dondang sayang', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dongjing', NULL, 'dongjing', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('donk', NULL, 'donk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('donosti sound', NULL, 'donosti sound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('doo-wop', NULL, 'doo-wop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('doomcore', NULL, 'doomcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('doomgaze', NULL, 'doomgaze', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('doskpop', NULL, 'doskpop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('downtempo', NULL, 'downtempo', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('downtempo deathcore', 'deathcore', 'deathcore', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dream pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dream trance', 'trance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dreampunk', NULL, 'dreampunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('drift phonk', 'phonk', 'phonk', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('drill and bass', 'drum and bass', 'electronic', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('drinking song', NULL, 'drinking song', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('drone', NULL, 'drone', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('drone metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('drum and bugle corps', NULL, 'drum and bugle corps', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('drumfunk', NULL, 'drumfunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('drumless hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('drumline', NULL, 'drumline', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('drumstep', NULL, 'drumstep', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dub poetry', 'poetry', 'poetry', 'reggae/ska', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dub techno', 'techno', 'techno', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dubstyle', NULL, 'dubstyle', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dubwise', NULL, 'dubwise', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('duma', NULL, 'duma', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dunedin sound', NULL, 'dunedin sound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dungeon rap', NULL, 'dungeon rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dungeon sound', NULL, 'dungeon sound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dungeon synth', NULL, 'dungeon synth', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('duranguense', NULL, 'duranguense', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('dutch house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('eai', NULL, 'eai', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hardstyle', NULL, 'hardstyle', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('early hardstyle', 'hardstyle', 'hardstyle', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('east coast hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('eastern-style polka', 'polka', 'polka', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('easy listening', NULL, 'easy listening', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('easycore', NULL, 'easycore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ebm', NULL, 'ebm', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('eccojams', NULL, 'eccojams', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electric blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electric texas blues', 'texas blues', 'blues', 'blues', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electro hop', NULL, 'electro hop', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electro house', 'house', 'house', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electro latino', NULL, 'electro latino', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('swing', NULL, 'swing', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electro swing', 'swing', 'swing', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electro-disco', NULL, 'electro-disco', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electro-funk', NULL, 'electro-funk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electro-industrial', NULL, 'electro-industrial', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electroacoustic', NULL, 'electroacoustic', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electroclash', NULL, 'electroclash', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electronic rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electronicore', NULL, 'electronicore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electropop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electropunk', NULL, 'electropunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('electrotango', NULL, 'electrotango', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('eleki', NULL, 'eleki', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('eletrofunk', NULL, 'eletrofunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('embolada', NULL, 'embolada', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('emo', NULL, 'emo', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('emo pop', 'pop', 'pop', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('emo rap', NULL, 'emo rap', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('emocore', NULL, 'emocore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('emoviolence', NULL, 'emoviolence', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('english pastoral school', NULL, 'english pastoral school', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('enka', NULL, 'enka', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('éntekhno', NULL, 'éntekhno', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('epic collage', NULL, 'epic collage', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('epic doom metal', 'doom metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('estrada', NULL, 'estrada', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ethereal wave', 'wave', 'wave', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ethio-jazz', NULL, 'ethio-jazz', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('étude', NULL, 'étude', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('euphoric hardstyle', 'hardstyle', 'hardstyle', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('euro house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('euro-disco', NULL, 'euro-disco', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('euro-trance', NULL, 'euro-trance', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('eurobeat', NULL, 'eurobeat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('eurodance', 'dance', 'dance', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('europop', NULL, 'europop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('euskal kantagintza berria', NULL, 'euskal kantagintza berria', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('exotica', NULL, 'exotica', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('experimental', NULL, 'experimental', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('experimental big band', 'big band', 'big band', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('experimental electronic', 'electronic', 'electronic', 'other', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('experimental hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('experimental rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('expressionism', NULL, 'expressionism', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('extratone', NULL, 'extratone', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fado', NULL, 'fado', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fado de coimbra', NULL, 'fado de coimbra', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fairy tale', NULL, 'fairy tale', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fakaseasea', NULL, 'fakaseasea', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('falak', NULL, 'falak', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('famo', NULL, 'famo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fandango', NULL, 'fandango', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fandango caiçara', NULL, 'fandango caiçara', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fantasia', NULL, 'fantasia', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fantezi', NULL, 'fantezi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('festejo', NULL, 'festejo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive house', 'house', 'house', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('festival progressive house', 'progressive house', 'house', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('festival trap', 'trap', 'trap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fidget house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('field recording', NULL, 'field recording', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fife and drum', NULL, 'fife and drum', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fife and drum blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fijiri', NULL, 'fijiri', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('filin', NULL, 'filin', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('filipino rondalla', NULL, 'filipino rondalla', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('filk', NULL, 'filk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('filmi', NULL, 'filmi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tango', NULL, 'tango', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('finnish tango', 'tango', 'tango', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('flamenco', NULL, 'flamenco', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('flamenco jazz', 'jazz', 'jazz', 'jazz', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('flamenco pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('flashcore', NULL, 'flashcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('flex dance music', NULL, 'flex dance music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('florida breaks', 'breaks', 'breaks', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fm synthesis', NULL, 'fm synthesis', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('folk metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('folk pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('folk punk', 'punk', 'punk', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('folkhop', NULL, 'folkhop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('folktronica', NULL, 'folktronica', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fon leb', NULL, 'fon leb', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('football chant', NULL, 'football chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('footwork', NULL, 'footwork', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jungle', NULL, 'jungle', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('footwork jungle', 'jungle', 'jungle', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('forest psytrance', 'psytrance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('forró', NULL, 'forró', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('forró de favela', NULL, 'forró de favela', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('forró eletrônico', NULL, 'forró eletrônico', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('forró universitário', NULL, 'forró universitário', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('frapcore', NULL, 'frapcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('frat rap', NULL, 'frat rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('frat rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('freak folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('freakbeat', NULL, 'freakbeat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('free car music', NULL, 'free car music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('free folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('free improvisation', NULL, 'free improvisation', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('free jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('free tekno', NULL, 'free tekno', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('freeform hardcore', NULL, 'freeform hardcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('freestyle', NULL, 'freestyle', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('french electro', 'electro', 'electro', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('french house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('frenchcore', NULL, 'frenchcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('frevo', NULL, 'frevo', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('frevo de bloco', NULL, 'frevo de bloco', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('frevo de rua', NULL, 'frevo de rua', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('frevo elétrico', NULL, 'frevo elétrico', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('frevo-canção', NULL, 'frevo-canção', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fugue', NULL, 'fugue', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fuji', NULL, 'fuji', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('full-on', NULL, 'full-on', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funaná', NULL, 'funaná', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funeral doom metal', 'doom metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funeral march', 'march', 'march', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fungi', NULL, 'fungi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funk automotivo', NULL, 'funk automotivo', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funk brasileiro', NULL, 'funk brasileiro', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funk carioca', 'funk', 'funk', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funk consciente', NULL, 'funk consciente', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funk de bh', NULL, 'funk de bh', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funk mandelão', NULL, 'funk mandelão', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funk melody', NULL, 'funk melody', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funk metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funk ostentação', NULL, 'funk ostentação', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funk proibidão', NULL, 'funk proibidão', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funk rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funknejo', NULL, 'funknejo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funkot', NULL, 'funkot', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funktronica', NULL, 'funktronica', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funky breaks', 'breaks', 'breaks', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('funky house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('fusion gugak', NULL, 'fusion gugak', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('future bass', 'bass', 'future bass', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('future bounce', 'bounce', 'bounce', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('future core', NULL, 'future core', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('future funk', 'funk', 'funk', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('future garage', NULL, 'future garage', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('future house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rave', NULL, 'rave', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('future rave', 'rave', 'rave', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('future riddim', NULL, 'future riddim', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('futurepop', NULL, 'futurepop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('futurism', NULL, 'futurism', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('g-funk', NULL, 'g-funk', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('g-house', NULL, 'g-house', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gaana', NULL, 'gaana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gabber', NULL, 'gabber', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gaelic psalm singing', NULL, 'gaelic psalm singing', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gagaku', NULL, 'gagaku', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gagok', NULL, 'gagok', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gaita zuliana', NULL, 'gaita zuliana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gallican chant', NULL, 'gallican chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gambang kromong', NULL, 'gambang kromong', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan angklung', NULL, 'gamelan angklung', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan beleganjur', NULL, 'gamelan beleganjur', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan degung', NULL, 'gamelan degung', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan gender wayang', NULL, 'gamelan gender wayang', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan gong gede', NULL, 'gamelan gong gede', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan gong kebyar', NULL, 'gamelan gong kebyar', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan jegog', NULL, 'gamelan jegog', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan joged bumbung', NULL, 'gamelan joged bumbung', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan salendro', NULL, 'gamelan salendro', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan sekaten', NULL, 'gamelan sekaten', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan selunding', NULL, 'gamelan selunding', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan semar pegulingan', NULL, 'gamelan semar pegulingan', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan siteran', NULL, 'gamelan siteran', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gamelan surakarta', NULL, 'gamelan surakarta', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gangsta rap', 'rap', 'gangsta rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('garage house', 'house', 'house', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('garage psych', NULL, 'garage psych', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('garage punk', 'punk', 'punk', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('garage rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('garage rock revival', NULL, 'garage rock revival', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('garba', NULL, 'garba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('geek rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('género chico', NULL, 'género chico', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('género grande', NULL, 'género grande', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('genge', NULL, 'genge', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gengetone', NULL, 'gengetone', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('għana', NULL, 'għana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ghazal', NULL, 'ghazal', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ghetto funk', 'funk', 'funk', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ghetto house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ghettotech', NULL, 'ghettotech', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ginan', NULL, 'ginan', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('glam', NULL, 'glam', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('glam metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('glam punk', 'punk', 'punk', 'punk', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('glam rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('glitch', NULL, 'glitch', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('glitch hop', NULL, 'glitch hop', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('glitch hop edm', 'edm', 'edm', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('glitch pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gnawa', NULL, 'gnawa', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('go-go', NULL, 'go-go', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('goa trance', 'trance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gommance', NULL, 'gommance', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gondang', NULL, 'gondang', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('goombay', NULL, 'goombay', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('goregrind', NULL, 'goregrind', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gorenoise', NULL, 'gorenoise', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gospel house', 'house', 'house', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('reggae', NULL, 'reggae', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gospel reggae', 'reggae', 'reggae', 'reggae/ska', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gothic', NULL, 'gothic', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gothic country', 'country', 'country', 'country', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gothic metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gothic rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gqom', NULL, 'gqom', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('grand opera', 'opera', 'opera', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('graphical sound', NULL, 'graphical sound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('grebo', NULL, 'grebo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gregorian chant', NULL, 'gregorian chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('grime', NULL, 'grime', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('grindcore', NULL, 'grindcore', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('griot', NULL, 'griot', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('groove metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('group sounds', NULL, 'group sounds', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('grunge', NULL, 'grunge', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('grupera', NULL, 'grupera', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gstanzl', NULL, 'gstanzl', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('guaguancó', NULL, 'guaguancó', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('guajira', NULL, 'guajira', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('guangdong yinyue', NULL, 'guangdong yinyue', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('guaracha', NULL, 'guaracha', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('guaracha edm', 'edm', 'edm', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('guaracha santiagueña', NULL, 'guaracha santiagueña', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('guarania', NULL, 'guarania', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gufeng', NULL, 'gufeng', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('guggenmusik', NULL, 'guggenmusik', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('guided meditation', NULL, 'guided meditation', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('guitarrada', NULL, 'guitarrada', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gumbe', NULL, 'gumbe', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('guoyue', NULL, 'guoyue', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gwo ka', NULL, 'gwo ka', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gypsy jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('gypsy punk', 'punk', 'punk', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('habanera', NULL, 'habanera', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('haitian vodou drumming', NULL, 'haitian vodou drumming', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('halftime', NULL, 'halftime', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hambo', NULL, 'hambo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hamburger schule', NULL, 'hamburger schule', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hands up', NULL, 'hands up', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hanmai', NULL, 'hanmai', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('haozi', NULL, 'haozi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hapa haole', NULL, 'hapa haole', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('happy hardcore', NULL, 'happy hardcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('harana', NULL, 'harana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('harawi', NULL, 'harawi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hard beat', NULL, 'hard beat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hard bop', NULL, 'hard bop', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hard drum', NULL, 'hard drum', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hard house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hard nrg', NULL, 'hard nrg', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hard rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hard techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hard trance', 'trance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hard trap', 'trap', 'trap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hardbag', NULL, 'hardbag', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hardbass', NULL, 'hardbass', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hardcore breaks', 'breaks', 'breaks', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hardcore hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hardcore punk', 'punk', 'punk', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hardcore techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hardgroove techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hardstep', NULL, 'hardstep', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hardvapour', NULL, 'hardvapour', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hardwave', NULL, 'hardwave', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('harsh noise', 'noise', 'noise', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('harsh noise wall', NULL, 'harsh noise wall', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hát tuồng', NULL, 'hát tuồng', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hauntology', NULL, 'hauntology', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('heartland rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('heaven trap', 'trap', 'trap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('heavy metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('heavy psych', NULL, 'heavy psych', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('heikyoku', NULL, 'heikyoku', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('henan opera', 'opera', 'opera', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hexd', NULL, 'hexd', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hi-nrg', NULL, 'hi-nrg', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hi-tech', NULL, 'hi-tech', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hi-tech full-on', 'full-on', 'full-on', 'other', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('highlife', NULL, 'highlife', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hill country blues', 'country blues', 'blues', 'blues', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('himene tarava', NULL, 'himene tarava', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hindustani classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hip hop soul', 'soul', 'soul', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hip house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hipco', NULL, 'hipco', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hiplife', NULL, 'hiplife', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('minimalism', NULL, 'minimalism', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('holy minimalism', 'minimalism', 'minimalism', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('honky tonk', NULL, 'honky tonk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('honkyoku', NULL, 'honkyoku', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hopepunk', NULL, 'hopepunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('horror punk', 'punk', 'punk', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('horror synth', NULL, 'horror synth', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('horrorcore', NULL, 'horrorcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hot rod music', NULL, 'hot rod music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('houston sound', NULL, 'houston sound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('huapango', NULL, 'huapango', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('huaylarsh', NULL, 'huaylarsh', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('huayno', NULL, 'huayno', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('humppa', NULL, 'humppa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hungarian folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hyangak', NULL, 'hyangak', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hybrid trap', 'trap', 'trap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hyper techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hyperpop', NULL, 'hyperpop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hypertechno', NULL, 'hypertechno', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hyphy', NULL, 'hyphy', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('hypnagogic pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('iavnana', NULL, 'iavnana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('idm', NULL, 'idm', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('idol kayō', NULL, 'idol kayō', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('illbient', NULL, 'illbient', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('impressionism', NULL, 'impressionism', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('impromptu', NULL, 'impromptu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('indeterminacy', NULL, 'indeterminacy', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('indian classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('indian pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('indie folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('indie pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('indie rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('surf', NULL, 'surf', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('indie surf', 'surf', 'surf', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('indietronica', NULL, 'indietronica', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('indo jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('indorock', NULL, 'indorock', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('industrial folk song', NULL, 'industrial folk song', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('industrial hardcore', NULL, 'industrial hardcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('industrial hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('industrial metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('musical', NULL, 'musical', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('industrial musical', 'musical', 'musical', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('industrial rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('industrial techno', 'techno', 'techno', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('instrumental', NULL, 'instrumental', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('instrumental hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('instrumental jazz', 'jazz', 'jazz', 'jazz', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('instrumental rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('serialism', NULL, 'serialism', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('integral serialism', 'serialism', 'serialism', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('interview', NULL, 'interview', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('iraqi maqam', NULL, 'iraqi maqam', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('irish folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('isa', NULL, 'isa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('isicathamiya', NULL, 'isicathamiya', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('islamic modal music', NULL, 'islamic modal music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('italo dance', 'dance', 'dance', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('italo house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('italo-disco', NULL, 'italo-disco', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('izlan', NULL, 'izlan', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('izvorna bosanska muzika', NULL, 'izvorna bosanska muzika', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('j-core', NULL, 'j-core', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('j-euro', NULL, 'j-euro', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('j-pop', NULL, 'j-pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('j-rock', NULL, 'j-rock', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jácara', NULL, 'jácara', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jackin house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jaipongan', NULL, 'jaipongan', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jam band', NULL, 'jam band', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ska', NULL, 'ska', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jamaican ska', 'ska', 'ska', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('james bay fiddling', NULL, 'james bay fiddling', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jamgrass', NULL, 'jamgrass', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jangle pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('japanese classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('javanese gamelan', 'gamelan', 'gamelan', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jawaiian', NULL, 'jawaiian', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jazz blues', 'blues', 'blues', 'jazz', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jazz fusion', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jazz guachaca', NULL, 'jazz guachaca', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jazz house', 'house', 'house', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mugham', NULL, 'mugham', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jazz mugham', 'mugham', 'mugham', 'jazz', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jazz poetry', 'poetry', 'poetry', 'jazz', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jazz pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jazz rap', 'rap', 'jazz rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jazz rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jazz-funk', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jazzstep', NULL, 'jazzstep', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jeongak', NULL, 'jeongak', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jerk', NULL, 'jerk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jerk rap', NULL, 'jerk rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jersey club', 'club', 'club', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jersey club rap', NULL, 'jersey club rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jersey drill', 'drill', 'drill', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jersey sound', NULL, 'jersey sound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jesus music', NULL, 'jesus music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jiangnan sizhu', NULL, 'jiangnan sizhu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jit', NULL, 'jit', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jiuta', NULL, 'jiuta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('joik', NULL, 'joik', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jongo', NULL, 'jongo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('joropo', NULL, 'joropo', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jōruri', NULL, 'jōruri', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jota', NULL, 'jota', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jovem guarda', NULL, 'jovem guarda', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jubilee', NULL, 'jubilee', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jug band', NULL, 'jug band', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jùjú', NULL, 'jùjú', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('juke', NULL, 'juke', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jump blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jump up', NULL, 'jump up', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jumpstyle', NULL, 'jumpstyle', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jungle dutch', NULL, 'jungle dutch', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('jungle terror', NULL, 'jungle terror', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('junkanoo', NULL, 'junkanoo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('k-pop', NULL, 'k-pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kabarett', NULL, 'kabarett', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kacapi suling', NULL, 'kacapi suling', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kadongo kamu', NULL, 'kadongo kamu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kafi', NULL, 'kafi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kagura', NULL, 'kagura', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kai', NULL, 'kai', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kakawin', NULL, 'kakawin', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kalattut', NULL, 'kalattut', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kalindula', NULL, 'kalindula', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kalon''ny fahiny', NULL, 'kalon''ny fahiny', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kan ha diskan', NULL, 'kan ha diskan', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kaneka', NULL, 'kaneka', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kankyō ongaku', NULL, 'kankyō ongaku', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kantan chamorrita', NULL, 'kantan chamorrita', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kanto', NULL, 'kanto', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kantruem', NULL, 'kantruem', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kapuka', NULL, 'kapuka', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kaseko', NULL, 'kaseko', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kasékò', NULL, 'kasékò', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kawaii future bass', 'future bass', 'future bass', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kawaii metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kayōkyoku', NULL, 'kayōkyoku', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kecak', NULL, 'kecak', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('keroncong', NULL, 'keroncong', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kete', NULL, 'kete', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ketuk tilu', NULL, 'ketuk tilu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('khrueang sai', NULL, 'khrueang sai', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('khyal', NULL, 'khyal', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kidandali', NULL, 'kidandali', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kidumbak', NULL, 'kidumbak', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kilapanga', NULL, 'kilapanga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kirtan', NULL, 'kirtan', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kizomba', NULL, 'kizomba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('klapa', NULL, 'klapa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('klasik', NULL, 'klasik', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kleinkunst', NULL, 'kleinkunst', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('klezmer', NULL, 'klezmer', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kliningan', NULL, 'kliningan', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('konnakol', NULL, 'konnakol', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('könsrock', NULL, 'könsrock', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kontakion', NULL, 'kontakion', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('koplo', NULL, 'koplo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('korean ballad', 'ballad', 'ballad', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('korean classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('korean revolutionary opera', 'opera', 'opera', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kouta', NULL, 'kouta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('krakowiak', NULL, 'krakowiak', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('krautrock', NULL, 'krautrock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kréyol djaz', NULL, 'kréyol djaz', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('krushclub', NULL, 'krushclub', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kuda lumping', NULL, 'kuda lumping', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kuduro', NULL, 'kuduro', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kujawiak', NULL, 'kujawiak', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kulintang', NULL, 'kulintang', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kumi-daiko', NULL, 'kumi-daiko', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kumiuta', NULL, 'kumiuta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kundiman', NULL, 'kundiman', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kunqu', NULL, 'kunqu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kwaito', NULL, 'kwaito', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kwassa kwassa', NULL, 'kwassa kwassa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kwela', NULL, 'kwela', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('kyivan chant', NULL, 'kyivan chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('laiko', NULL, 'laiko', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lambada', NULL, 'lambada', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ländlermusik', NULL, 'ländlermusik', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('landó', NULL, 'landó', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('langgam jawa', NULL, 'langgam jawa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('latin', NULL, 'latin', 'latin', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('latin ballad', 'ballad', 'ballad', 'latin', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('latin disco', 'disco', 'disco', 'latin', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('latin funk', 'funk', 'funk', 'latin', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('latin house', 'house', 'house', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('latin jazz', 'jazz', 'jazz', 'jazz', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('latin pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('latin rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('latin soul', 'soul', 'soul', 'latin', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lauda', NULL, 'lauda', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lavani', NULL, 'lavani', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lecture', NULL, 'lecture', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('leftfield', NULL, 'leftfield', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lento violento', NULL, 'lento violento', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('levenslied', NULL, 'levenslied', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lied', NULL, 'lied', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('liedermacher', NULL, 'liedermacher', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('liquid funk', 'drum and bass', 'electronic', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('liquid riddim', NULL, 'liquid riddim', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('liscio', NULL, 'liscio', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('livetronica', NULL, 'livetronica', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('liwa', NULL, 'liwa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lo-fi', NULL, 'lo-fi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lo-fi hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lo-fi house', 'house', 'house', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lolicore', NULL, 'lolicore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('loner folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('loud kei', NULL, 'loud kei', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('louisiana blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lounge', NULL, 'lounge', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lovers rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lowend', NULL, 'lowend', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lowercase', NULL, 'lowercase', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('luk krung', NULL, 'luk krung', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('luk thung', NULL, 'luk thung', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lullaby', NULL, 'lullaby', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lundu', NULL, 'lundu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('lute song', NULL, 'lute song', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mad', NULL, 'mad', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('madchester', NULL, 'madchester', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('maddahi', NULL, 'maddahi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('madrigal', NULL, 'madrigal', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mafioso rap', NULL, 'mafioso rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('maftirim', NULL, 'maftirim', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mahori', NULL, 'mahori', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mahraganat', NULL, 'mahraganat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mainstream rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('makina', NULL, 'makina', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('makossa', NULL, 'makossa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('malagueña venezolana', NULL, 'malagueña venezolana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('malay gamelan', 'gamelan', 'gamelan', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('malhun', NULL, 'malhun', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mallsoft', NULL, 'mallsoft', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('malouf', NULL, 'malouf', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('maloya', NULL, 'maloya', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('maloya électronique', NULL, 'maloya électronique', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('maloya élektrik', NULL, 'maloya élektrik', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mambo', NULL, 'mambo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mambo chileno', NULL, 'mambo chileno', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mambo urbano', NULL, 'mambo urbano', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mandopop', NULL, 'mandopop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('manele', NULL, 'manele', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mangambeu', NULL, 'mangambeu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mangue beat', NULL, 'mangue beat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('manila sound', NULL, 'manila sound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mantra', NULL, 'mantra', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('manyao', NULL, 'manyao', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mappila', NULL, 'mappila', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('marabi', NULL, 'marabi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('maracatu', NULL, 'maracatu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('marching band', NULL, 'marching band', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('marchinha', NULL, 'marchinha', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mariachi', NULL, 'mariachi', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('marinera', NULL, 'marinera', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('marrabenta', NULL, 'marrabenta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('martial industrial', 'industrial', 'industrial', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mashcore', NULL, 'mashcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('maskanda', NULL, 'maskanda', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mass', NULL, 'mass', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mataali', NULL, 'mataali', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('math pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('math rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mathcore', NULL, 'mathcore', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('maxixe', NULL, 'maxixe', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mazurka', NULL, 'mazurka', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mbalax', NULL, 'mbalax', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mbaqanga', NULL, 'mbaqanga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mbolé', NULL, 'mbolé', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mbube', NULL, 'mbube', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mchiriku', NULL, 'mchiriku', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('medieval', NULL, 'medieval', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('medieval lyric poetry', 'poetry', 'poetry', 'classical/opera', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('medieval metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('medieval rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mega funk', 'funk', 'funk', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shinkyoku', NULL, 'shinkyoku', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('meiji shinkyoku', 'shinkyoku', 'shinkyoku', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('melbourne bounce', 'bounce', 'bounce', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('melodic bass', NULL, 'melodic bass', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('melodic black metal', 'black metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('melodic death metal', 'death metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('melodic dubstep', 'dubstep', 'electronic', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('melodic hardcore', NULL, 'melodic hardcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('melodic house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('metalcore', NULL, 'metalcore', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('melodic metalcore', 'metalcore', 'metalcore', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('melodic techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('melodic trance', 'trance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mélodie', NULL, 'mélodie', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('memphis rap', NULL, 'memphis rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mento', NULL, 'mento', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('menzuma', NULL, 'menzuma', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('merecumbé', NULL, 'merecumbé', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('merengue', NULL, 'merengue', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('merengue típico', NULL, 'merengue típico', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('merenhouse', NULL, 'merenhouse', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('merequetengue', NULL, 'merequetengue', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('méringue', NULL, 'méringue', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('merseybeat', NULL, 'merseybeat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('métis fiddling', NULL, 'métis fiddling', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('meyxana', NULL, 'meyxana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('miami bass', NULL, 'miami bass', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('microfunk', NULL, 'microfunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('microhouse', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('microsound', NULL, 'microsound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('microtonal classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('midtempo bass', NULL, 'midtempo bass', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('midwest emo', 'emo', 'emo', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('miejski folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('military cadence', NULL, 'military cadence', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('milonga', NULL, 'milonga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('min''yō', NULL, 'min''yō', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('minatory', NULL, 'minatory', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mincecore', NULL, 'mincecore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('minimal drum and bass', 'drum and bass', 'electronic', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('minimal synth', NULL, 'minimal synth', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('minimal techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('minimal wave', 'wave', 'wave', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('minneapolis sound', NULL, 'minneapolis sound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('minstrelsy', NULL, 'minstrelsy', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mobb music', NULL, 'mobb music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mod', NULL, 'mod', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mod revival', NULL, 'mod revival', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('moda de viola', NULL, 'moda de viola', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('modal jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('modern blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('modern classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('modern creative', NULL, 'modern creative', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('modern hardtek', NULL, 'modern hardtek', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('modern laiko', 'laiko', 'laiko', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('modinha', NULL, 'modinha', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('moe song', NULL, 'moe song', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('monodrama', NULL, 'monodrama', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mood kayō', NULL, 'mood kayō', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('moogsploitation', NULL, 'moogsploitation', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('moombahcore', NULL, 'moombahcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('moombahton', NULL, 'moombahton', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mor lam', NULL, 'mor lam', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mor lam sing', NULL, 'mor lam sing', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('morenada', NULL, 'morenada', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('morna', NULL, 'morna', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('moroccan chaabi', NULL, 'moroccan chaabi', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('motet', NULL, 'motet', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('motown', NULL, 'motown', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('moutya', NULL, 'moutya', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('movimiento alterado', NULL, 'movimiento alterado', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mozarabic chant', NULL, 'mozarabic chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mpb', NULL, 'mpb', 'latin', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('muak', NULL, 'muak', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('muiñeira', NULL, 'muiñeira', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mulatós', NULL, 'mulatós', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('muliza', NULL, 'muliza', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('murga', NULL, 'murga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('murga uruguaya', NULL, 'murga uruguaya', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('musette', NULL, 'musette', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('music hall', NULL, 'music hall', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('música cebolla', NULL, 'música cebolla', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('música criolla', NULL, 'música criolla', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('música de intervenção', NULL, 'música de intervenção', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('música llanera', NULL, 'música llanera', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('música típica chilena', 'chilena', 'chilena', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('mūsīqā lubnāniyya', NULL, 'mūsīqā lubnāniyya', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('musique concrète', NULL, 'musique concrète', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('musique concrète instrumentale', NULL, 'musique concrète instrumentale', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('muzika mizrahit', NULL, 'muzika mizrahit', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('muzika yehudit mekorit', NULL, 'muzika yehudit mekorit', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('muzikat dika''on', NULL, 'muzikat dika''on', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('muziki wa dansi', NULL, 'muziki wa dansi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nagauta', NULL, 'nagauta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nanguan', NULL, 'nanguan', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('narcocorrido', NULL, 'narcocorrido', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('narodnozabavna glasba', NULL, 'narodnozabavna glasba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nasheed', NULL, 'nasheed', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nashville sound', NULL, 'nashville sound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('native american new age', 'new age', 'ambient', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nature sounds', NULL, 'nature sounds', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('natya sangeet', NULL, 'natya sangeet', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nederbeat', NULL, 'nederbeat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nederpop', NULL, 'nederpop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neo kyma', NULL, 'neo kyma', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neo soul', 'soul', 'soul', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neo-acoustic', NULL, 'neo-acoustic', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neo-city pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neo-grime', NULL, 'neo-grime', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neo-medieval folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neo-progressive rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neo-psychedelia', NULL, 'neo-psychedelia', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neo-rockabilly', NULL, 'neo-rockabilly', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('néo-trad', NULL, 'néo-trad', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neo-traditional country', 'country', 'country', 'country', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neoclassical dark wave', 'dark wave', 'wave', 'other', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neoclassical metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neoclassical new age', 'new age', 'ambient', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neoclassicism', NULL, 'neoclassicism', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neocrust', NULL, 'neocrust', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neofolk', NULL, 'neofolk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neofolklore', NULL, 'neofolklore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pop punk', 'punk', 'punk', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neon pop punk', 'pop punk', 'punk', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neoperreo', NULL, 'neoperreo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neoromanticism', NULL, 'neoromanticism', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nerdcore', NULL, 'nerdcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nerdcore techno', 'techno', 'techno', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neue deutsche härte', NULL, 'neue deutsche härte', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neue deutsche todeskunst', NULL, 'neue deutsche todeskunst', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neue deutsche welle', NULL, 'neue deutsche welle', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neurofunk', 'drum and bass', 'electronic', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('neurohop', NULL, 'neurohop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('new beat', NULL, 'new beat', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('new complexity', NULL, 'new complexity', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('new jack swing', 'swing', 'swing', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('new jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('new mexico music', NULL, 'new mexico music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('new orleans blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('new orleans r&b', 'r&b', 'r&b', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('new rave', 'rave', 'rave', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('new romantic', NULL, 'new romantic', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('new wave', 'wave', 'wave', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('new york drill', 'drill', 'drill', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ngâm thơ', NULL, 'ngâm thơ', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ngoma', NULL, 'ngoma', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nhạc đỏ', NULL, 'nhạc đỏ', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nhạc tiền chiến', NULL, 'nhạc tiền chiến', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nhạc vàng', NULL, 'nhạc vàng', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('night full-on', 'full-on', 'full-on', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nightcore', NULL, 'nightcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nigun', NULL, 'nigun', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nintendocore', NULL, 'nintendocore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nitzhonot', NULL, 'nitzhonot', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('njuup', NULL, 'njuup', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('no melody trap', 'trap', 'trap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('no wave', 'wave', 'wave', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nocturne', NULL, 'nocturne', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('noh', NULL, 'noh', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('noiadance', NULL, 'noiadance', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('noise pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('noise rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('noisecore', NULL, 'noisecore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('noisegrind', NULL, 'noisegrind', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('non-music', NULL, 'non-music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nortec', NULL, 'nortec', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('norteño', NULL, 'norteño', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('northern soul', 'soul', 'soul', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nóta', NULL, 'nóta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zydeco', NULL, 'zydeco', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nouveau zydeco', 'zydeco', 'zydeco', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nova cançó', NULL, 'nova cançó', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('novelty piano', NULL, 'novelty piano', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('novo dub', 'dub', 'dub', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nu disco', 'disco', 'disco', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nu jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nu metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nu skool breaks', 'breaks', 'breaks', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nu style gabber', 'gabber', 'gabber', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nueva canción', NULL, 'nueva canción', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nueva canción chilena', 'chilena', 'chilena', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nueva canción española', NULL, 'nueva canción española', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nueva cumbia chilena', 'cumbia chilena', 'chilena', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trova', NULL, 'trova', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nueva trova', 'trova', 'trova', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nuevo cancionero', NULL, 'nuevo cancionero', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nuevo flamenco', 'flamenco', 'flamenco', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nuevo tango', 'tango', 'tango', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nustyle', NULL, 'nustyle', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nwobhm', NULL, 'nwobhm', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('nyū myūjikku', NULL, 'nyū myūjikku', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('oberek', NULL, 'oberek', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('occult rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('odissi classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ogene music', NULL, 'ogene music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('oi', NULL, 'oi', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('old roman chant', NULL, 'old roman chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('old school death metal', 'death metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('old school hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('old-time', NULL, 'old-time', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('omutibo', NULL, 'omutibo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('onda nueva', NULL, 'onda nueva', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ondō', NULL, 'ondō', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('onkyo', NULL, 'onkyo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('opera buffa', NULL, 'opera buffa', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('opéra comique', NULL, 'opéra comique', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('opera semiseria', NULL, 'opera semiseria', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('opera seria', NULL, 'opera seria', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('opera-ballet', NULL, 'opera-ballet', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('operatic pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('operetta', NULL, 'operetta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('opm', NULL, 'opm', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('oratorio', NULL, 'oratorio', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('orchestral', NULL, 'orchestral', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('orchestral jazz', 'jazz', 'jazz', 'jazz', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('orchestral song', NULL, 'orchestral song', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('organic house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ori deck', NULL, 'ori deck', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('oriental ballad', 'ballad', 'ballad', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('orkes gambus', NULL, 'orkes gambus', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('orthodox pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('outlaw country', 'country', 'country', 'country', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('outsider house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('overture', NULL, 'overture', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('özgün müzik', NULL, 'özgün müzik', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('p-funk', NULL, 'p-funk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pachanga', NULL, 'pachanga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pacific reggae', 'reggae', 'reggae', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pagan black metal', 'black metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pagan folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('paghjella', NULL, 'paghjella', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pagodão', NULL, 'pagodão', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pagode', NULL, 'pagode', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pagode romântico', NULL, 'pagode romântico', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('paisley underground', NULL, 'paisley underground', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('palingsound', NULL, 'palingsound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('palm-wine', NULL, 'palm-wine', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('palo de mayo', NULL, 'palo de mayo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pansori', NULL, 'pansori', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('parang', NULL, 'parang', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('parlour music', NULL, 'parlour music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('partido alto', NULL, 'partido alto', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pasillo', NULL, 'pasillo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pasodoble', NULL, 'pasodoble', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('passion setting', NULL, 'passion setting', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pásztordal', NULL, 'pásztordal', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('payada', NULL, 'payada', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('peak time techno', 'techno', 'techno', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pep band', NULL, 'pep band', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('persian classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('persian pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('philly club', 'club', 'club', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('philly club rap', NULL, 'philly club rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('philly drill', 'drill', 'drill', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('philly soul', 'soul', 'soul', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('phleng phuea chiwit', NULL, 'phleng phuea chiwit', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('phonk house', 'house', 'house', 'hip hop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('piano blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('piano rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('picopop', NULL, 'picopop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('piedmont blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pigfuck', NULL, 'pigfuck', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pilón', NULL, 'pilón', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pimba', NULL, 'pimba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pinpeat', NULL, 'pinpeat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pìobaireachd', NULL, 'pìobaireachd', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pipe band music', NULL, 'pipe band music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('piphat', NULL, 'piphat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pirekua', NULL, 'pirekua', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('piseiro', NULL, 'piseiro', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('piyyut', NULL, 'piyyut', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pizzica', NULL, 'pizzica', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('plainchant', NULL, 'plainchant', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('plena', NULL, 'plena', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pluggnb', NULL, 'pluggnb', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('plunderphonics', NULL, 'plunderphonics', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('polca criolla', NULL, 'polca criolla', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('polifonia occitana', NULL, 'polifonia occitana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('political hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('polka paraguaya', NULL, 'polka paraguaya', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('polonaise', NULL, 'polonaise', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pon-chak disco', 'disco', 'disco', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pop ghazal', 'ghazal', 'ghazal', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pop kreatif', NULL, 'pop kreatif', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pop metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pop minang', NULL, 'pop minang', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('raï', NULL, 'raï', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pop raï', 'raï', 'raï', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pop rap', 'rap', 'pop rap', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pop rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pop soul', 'soul', 'soul', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pop yeh-yeh', NULL, 'pop yeh-yeh', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('porn groove', NULL, 'porn groove', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pornogrind', NULL, 'pornogrind', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('porro', NULL, 'porro', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('post-bop', NULL, 'post-bop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('post-britpop', NULL, 'post-britpop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('post-classical', NULL, 'post-classical', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('post-dubstep', NULL, 'post-dubstep', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('post-grunge', NULL, 'post-grunge', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('post-hardcore', NULL, 'post-hardcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('post-industrial', NULL, 'post-industrial', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('post-metal', NULL, 'post-metal', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('post-minimalism', NULL, 'post-minimalism', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('post-punk', 'punk', 'punk', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('post-punk revival', NULL, 'post-punk revival', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('post-rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('powada', NULL, 'powada', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('power electronics', NULL, 'power electronics', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('power metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('power noise', 'noise', 'noise', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('power pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('power soca', 'soca', 'soca', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('powerstomp', NULL, 'powerstomp', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('powerviolence', NULL, 'powerviolence', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('praise & worship', NULL, 'praise & worship', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('praise break', NULL, 'praise break', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('prank calls', NULL, 'prank calls', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('prelude', NULL, 'prelude', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('process music', NULL, 'process music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('production music', NULL, 'production music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive', NULL, 'progressive', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive bluegrass', 'bluegrass', 'bluegrass', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive breaks', 'breaks', 'breaks', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive country', 'country', 'country', 'country', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive electronic', 'electronic', 'electronic', 'other', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive folk', 'folk', 'folk', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive metalcore', 'metalcore', 'metalcore', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive psytrance', 'psytrance', 'trance', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive soul', 'soul', 'soul', 'r&b/soul', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('progressive trance', 'trance', 'trance', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('proto-punk', NULL, 'proto-punk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psichedelia occulta italiana', NULL, 'psichedelia occulta italiana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psybient', NULL, 'psybient', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psybreaks', NULL, 'psybreaks', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psychedelic', NULL, 'psychedelic', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psychedelic folk', 'folk', 'folk', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psychedelic pop', 'pop', 'pop', 'pop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psychedelic rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psychedelic soul', 'soul', 'soul', 'r&b/soul', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psychobilly', NULL, 'psychobilly', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psychploitation', NULL, 'psychploitation', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psycore', NULL, 'psycore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('psystyle', NULL, 'psystyle', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pub rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('puirt à beul', NULL, 'puirt à beul', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pumpcore', NULL, 'pumpcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('pungmul', NULL, 'pungmul', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('punk blues', 'blues', 'blues', 'blues', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('punk poetry', 'poetry', 'poetry', 'punk', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('punk rap', NULL, 'punk rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('punk rock', 'punk', 'punk', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('punta', NULL, 'punta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('punto', NULL, 'punto', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('purple sound', NULL, 'purple sound', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('puxa', NULL, 'puxa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('q-pop', NULL, 'q-pop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('qaraami', NULL, 'qaraami', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('qasidah modern', NULL, 'qasidah modern', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('qawwali', NULL, 'qawwali', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('quan họ', NULL, 'quan họ', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('queercore', NULL, 'queercore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('quiet storm', NULL, 'quiet storm', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('quyi', NULL, 'quyi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rabbit song', NULL, 'rabbit song', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rabiz', NULL, 'rabiz', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('raga rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rage', NULL, 'rage', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ragga', NULL, 'ragga', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ragga hip-hop', NULL, 'ragga hip-hop', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ragga jungle', 'jungle', 'jungle', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('raggacore', NULL, 'raggacore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('raggatek', NULL, 'raggatek', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ragtime song', NULL, 'ragtime song', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rain sounds', NULL, 'rain sounds', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ranchera', NULL, 'ranchera', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rap metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rap rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rapcore', NULL, 'rapcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rapso', NULL, 'rapso', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('raqs baladi', NULL, 'raqs baladi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rara', NULL, 'rara', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rasin', NULL, 'rasin', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rasqueado cuiabano', NULL, 'rasqueado cuiabano', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rasteirinha', NULL, 'rasteirinha', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ratchet music', NULL, 'ratchet music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rautalanka', NULL, 'rautalanka', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('raw punk', 'punk', 'punk', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rawphoric', NULL, 'rawphoric', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rawstyle', NULL, 'rawstyle', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rebetiko', NULL, 'rebetiko', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('red dirt', NULL, 'red dirt', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('red disco', 'disco', 'disco', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('red song', NULL, 'red song', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('reductionism', NULL, 'reductionism', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('regalia', NULL, 'regalia', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('reggae rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('reggae-pop', NULL, 'reggae-pop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('reggaeton', NULL, 'reggaeton', 'latin', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('regional mexicano', NULL, 'regional mexicano', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('renaissance', NULL, 'renaissance', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('reparto', NULL, 'reparto', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('repente', NULL, 'repente', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('requiem', NULL, 'requiem', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('revue', NULL, 'revue', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rhumba', NULL, 'rhumba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ricercar', NULL, 'ricercar', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('riddim dubstep', 'dubstep', 'electronic', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rigsar', NULL, 'rigsar', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ring shout', NULL, 'ring shout', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('riot grrrl', NULL, 'riot grrrl', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ripsaw', NULL, 'ripsaw', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ritmada', NULL, 'ritmada', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ritual ambient', 'ambient', 'ambient', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rizitika', NULL, 'rizitika', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rkt', NULL, 'rkt', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rock and roll', NULL, 'rock and roll', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rock andaluz', NULL, 'rock andaluz', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rock andino', NULL, 'rock andino', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rock musical', 'musical', 'musical', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rock opera', 'opera', 'opera', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rock rural', NULL, 'rock rural', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rock urbano', NULL, 'rock urbano', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rock urbano mexicano', NULL, 'rock urbano mexicano', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rockabilly', NULL, 'rockabilly', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rocksteady', NULL, 'rocksteady', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rōkyoku', NULL, 'rōkyoku', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rom kbach', NULL, 'rom kbach', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('romanian popcorn', NULL, 'romanian popcorn', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('romantic classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('romantic flow', NULL, 'romantic flow', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('romantische oper', NULL, 'romantische oper', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rominimal', NULL, 'rominimal', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('roots reggae', 'reggae', 'reggae', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('roots rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rumba catalana', NULL, 'rumba catalana', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rumba cubana', NULL, 'rumba cubana', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('rumba flamenca', NULL, 'rumba flamenca', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('runo song', NULL, 'runo song', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('russian chanson', NULL, 'russian chanson', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('russian orthodox liturgical music', NULL, 'russian orthodox liturgical music', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('russian romance', NULL, 'russian romance', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ryūkōka', NULL, 'ryūkōka', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sa''idi', NULL, 'sa''idi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sacred harp', NULL, 'sacred harp', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sacred steel', NULL, 'sacred steel', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('saeta', NULL, 'saeta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('salegy', NULL, 'salegy', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('salsa', NULL, 'salsa', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('salsa choke', NULL, 'salsa choke', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('salsa dura', NULL, 'salsa dura', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('salsa romántica', NULL, 'salsa romántica', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('saluang klasik', 'klasik', 'klasik', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba', NULL, 'samba', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba de breque', NULL, 'samba de breque', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba de gafieira', NULL, 'samba de gafieira', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba de roda', NULL, 'samba de roda', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba de terreiro', NULL, 'samba de terreiro', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba soul', 'soul', 'soul', 'folk/world', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba-canção', NULL, 'samba-canção', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba-choro', NULL, 'samba-choro', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba-enredo', NULL, 'samba-enredo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba-exaltação', NULL, 'samba-exaltação', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba-jazz', NULL, 'samba-jazz', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba-joia', NULL, 'samba-joia', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba-reggae', NULL, 'samba-reggae', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samba-rock', NULL, 'samba-rock', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sambalanço', NULL, 'sambalanço', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sambass', NULL, 'sambass', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sample drill', 'drill', 'drill', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sampledelia', NULL, 'sampledelia', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('samri', NULL, 'samri', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sanjo', NULL, 'sanjo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('santé engagé', NULL, 'santé engagé', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sarala gee', NULL, 'sarala gee', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sardana', NULL, 'sardana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sarum chant', NULL, 'sarum chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sasscore', NULL, 'sasscore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sawt', NULL, 'sawt', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('saya afroboliviana', NULL, 'saya afroboliviana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('scam rap', NULL, 'scam rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('schlager', NULL, 'schlager', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('schottische', NULL, 'schottische', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('schranz', NULL, 'schranz', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('scottish country dance music', NULL, 'scottish country dance music', 'country', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('screamo', NULL, 'screamo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('western', NULL, 'western', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('scrumpy and western', 'western', 'western', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sea shanty', NULL, 'sea shanty', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sean-nós', NULL, 'sean-nós', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('seapunk', NULL, 'seapunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('séga', NULL, 'séga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('seggae', NULL, 'seggae', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('seguidilla', NULL, 'seguidilla', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('seishun punk', 'punk', 'punk', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('semba', NULL, 'semba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('semi-trot', NULL, 'semi-trot', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('serenade', NULL, 'serenade', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sermon', NULL, 'sermon', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sertanejo raiz', NULL, 'sertanejo raiz', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sertanejo romântico', NULL, 'sertanejo romântico', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sertanejo universitário', NULL, 'sertanejo universitário', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('seto leelo', NULL, 'seto leelo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sevdalinka', NULL, 'sevdalinka', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sevillanas', NULL, 'sevillanas', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sexy drill', 'drill', 'drill', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shaabi', NULL, 'shaabi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shabad kirtan', 'kirtan', 'kirtan', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shan''ge', NULL, 'shan''ge', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shangaan electro', 'electro', 'electro', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shanto', NULL, 'shanto', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shashmaqam', NULL, 'shashmaqam', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shatta', NULL, 'shatta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shibuya-kei', NULL, 'shibuya-kei', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shidaiqu', NULL, 'shidaiqu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shima-uta', NULL, 'shima-uta', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shitgaze', NULL, 'shitgaze', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shoegaze', NULL, 'shoegaze', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shōmyō', NULL, 'shōmyō', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('shoor', NULL, 'shoor', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sichuan opera', 'opera', 'opera', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sierreño', NULL, 'sierreño', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sigidrigi', NULL, 'sigidrigi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sigilkore', NULL, 'sigilkore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sinawi', NULL, 'sinawi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sinfonia concertante', NULL, 'sinfonia concertante', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('singeli', NULL, 'singeli', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('singer-songwriter', NULL, 'singer-songwriter', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('singspiel', NULL, 'singspiel', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sissy bounce', 'bounce', 'bounce', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sitarsploitation', NULL, 'sitarsploitation', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sizhu music', NULL, 'sizhu music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ska punk', 'punk', 'punk', 'reggae/ska', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('skacore', NULL, 'skacore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('skate punk', 'punk', 'punk', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sketch comedy', 'comedy', 'comedy', 'spoken/comedy', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('skiffle', NULL, 'skiffle', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('skiladiko', NULL, 'skiladiko', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('skinhead reggae', 'reggae', 'reggae', 'reggae/ska', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('skullstep', NULL, 'skullstep', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('skweee', NULL, 'skweee', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('slack-key guitar', NULL, 'slack-key guitar', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('slacker rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('slam death metal', 'death metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('slam poetry', 'poetry', 'poetry', 'spoken/comedy', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('slap house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sleaze rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('slimepunk', NULL, 'slimepunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('waltz', NULL, 'waltz', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('slow waltz', 'waltz', 'waltz', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('slowcore', NULL, 'slowcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('slowed & reverb', NULL, 'slowed & reverb', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('slushwave', NULL, 'slushwave', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('smooth jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('smooth soul', 'soul', 'soul', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('snap', NULL, 'snap', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('soft rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('soft visual', NULL, 'soft visual', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sōkyoku', NULL, 'sōkyoku', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('son calentano', NULL, 'son calentano', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('son cubano', NULL, 'son cubano', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('son de pascua', NULL, 'son de pascua', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('son huasteco', NULL, 'son huasteco', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('son istmeño', NULL, 'son istmeño', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('son jarocho', NULL, 'son jarocho', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('son montuno', NULL, 'son montuno', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('son nica', NULL, 'son nica', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sonata', NULL, 'sonata', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('songo', NULL, 'songo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sonorism', NULL, 'sonorism', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sophisti-pop', NULL, 'sophisti-pop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('soukous', NULL, 'soukous', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('soul blues', 'blues', 'blues', 'blues', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('soul jazz', 'jazz', 'jazz', 'jazz', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sound art', NULL, 'sound art', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sound collage', NULL, 'sound collage', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sound effects', NULL, 'sound effects', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sound poetry', 'poetry', 'poetry', 'spoken/comedy', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('southeast asian classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('southern gospel', 'gospel', 'gospel', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('southern hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('southern metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('southern rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('southern soul', 'soul', 'soul', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sovietwave', NULL, 'sovietwave', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('space age pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('space ambient', 'ambient', 'ambient', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('space disco', 'disco', 'disco', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('space rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('space rock revival', NULL, 'space rock revival', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('spacesynth', NULL, 'spacesynth', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('spamwave', NULL, 'spamwave', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('spectralism', NULL, 'spectralism', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('speech', NULL, 'speech', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('speed garage', NULL, 'speed garage', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('speed house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('speed metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('speedcore', NULL, 'speedcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('spiritual jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('spirituals', NULL, 'spirituals', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('splittercore', NULL, 'splittercore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('spoken word', NULL, 'spoken word', 'spoken/comedy', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('spouge', NULL, 'spouge', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('staïfi', NULL, 'staïfi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('standup comedy', 'comedy', 'comedy', 'spoken/comedy', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('steampunk', NULL, 'steampunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('steel band', NULL, 'steel band', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('stenchcore', NULL, 'stenchcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sticheron', NULL, 'sticheron', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('stochastic music', NULL, 'stochastic music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('stomp and holler', NULL, 'stomp and holler', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('stoner metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('stoner rap', NULL, 'stoner rap', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('stoner rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('stornello', NULL, 'stornello', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('street punk', 'punk', 'punk', 'punk', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('stride', NULL, 'stride', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('string quartet', NULL, 'string quartet', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('stutter house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sufi rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sufiana kalam', NULL, 'sufiana kalam', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sundanese pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sungura', NULL, 'sungura', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sunshine pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('suomisaundi', NULL, 'suomisaundi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('surf punk', 'punk', 'punk', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('surf rock', 'rock', 'rock', 'rock', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sutartinės', NULL, 'sutartinės', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('swamp blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('swamp pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('swamp rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('swancore', NULL, 'swancore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('sweet jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('swing revival', NULL, 'swing revival', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('symphonic black metal', 'black metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('symphonic metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('symphonic mugham', 'mugham', 'mugham', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('symphonic poem', NULL, 'symphonic poem', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('symphonic prog', NULL, 'symphonic prog', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('symphonic rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('synth funk', 'funk', 'funk', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('synth-pop', NULL, 'synth-pop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('synthwave', NULL, 'synthwave', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('t-pop', NULL, 't-pop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('taarab', NULL, 'taarab', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tajaraste', NULL, 'tajaraste', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('takamba', NULL, 'takamba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('talempong', NULL, 'talempong', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('talempong goyang', NULL, 'talempong goyang', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('talking blues', 'blues', 'blues', 'blues', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tallava', NULL, 'tallava', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tamborera', NULL, 'tamborera', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tamborito', NULL, 'tamborito', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tamborzão', NULL, 'tamborzão', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tammurriata', NULL, 'tammurriata', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tân cổ giao duyên', NULL, 'tân cổ giao duyên', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tanjidor', NULL, 'tanjidor', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('taoist ritual music', NULL, 'taoist ritual music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tape music', NULL, 'tape music', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tappa', NULL, 'tappa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('taquirari', NULL, 'taquirari', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tarana', NULL, 'tarana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tarantella', NULL, 'tarantella', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tarawangsa', NULL, 'tarawangsa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tarraxinha', NULL, 'tarraxinha', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tassa', NULL, 'tassa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tassu', NULL, 'tassu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tchinkoumé', NULL, 'tchinkoumé', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tearout', NULL, 'tearout', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tearout brostep', 'brostep', 'electronic', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tech house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tech trance', 'trance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('technical death metal', 'death metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('thrash metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('technical thrash metal', 'thrash metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('techno bass', NULL, 'techno bass', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('techno kayō', NULL, 'techno kayō', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('technobanda', NULL, 'technobanda', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('technoid', NULL, 'technoid', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('techstep', NULL, 'techstep', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tecnobrega', NULL, 'tecnobrega', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tecnofunk', NULL, 'tecnofunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tecnomerengue', NULL, 'tecnomerengue', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tecnorumba', NULL, 'tecnorumba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('teen pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tejano', NULL, 'tejano', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tembang cianjuran', NULL, 'tembang cianjuran', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('terror plugg', 'plugg', 'plugg', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('terrorcore', NULL, 'terrorcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tex-mex', NULL, 'tex-mex', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('texas country', 'country', 'country', 'country', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('thai classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('thall', NULL, 'thall', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('theme and variations', NULL, 'theme and variations', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('third stream', NULL, 'third stream', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('third wave ska', 'ska', 'ska', 'reggae/ska', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('thrashcore', NULL, 'thrashcore', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('thumri', NULL, 'thumri', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tibetan buddhist chant', NULL, 'tibetan buddhist chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tiento', NULL, 'tiento', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('timba', NULL, 'timba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('timbila', NULL, 'timbila', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tin pan alley', NULL, 'tin pan alley', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tivaner inngernerlu', NULL, 'tivaner inngernerlu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tizita', NULL, 'tizita', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('toada de boi', NULL, 'toada de boi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('toccata', NULL, 'toccata', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tonada asturiana', NULL, 'tonada asturiana', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tonada potosina', NULL, 'tonada potosina', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tonadilla', NULL, 'tonadilla', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tondero', NULL, 'tondero', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tontipop', NULL, 'tontipop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('totalism', NULL, 'totalism', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('township bubblegum', NULL, 'township bubblegum', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('township jive', NULL, 'township jive', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('toypop', NULL, 'toypop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('toytown pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tradi-moderne congolais', NULL, 'tradi-moderne congolais', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tradi-moderne ivoirien', NULL, 'tradi-moderne ivoirien', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('traditional black gospel', 'gospel', 'gospel', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('traditional bluegrass', 'bluegrass', 'bluegrass', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('traditional country', 'country', 'country', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('traditional doom metal', 'doom metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('traditional pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tragédie en musique', NULL, 'tragédie en musique', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trallalero', NULL, 'trallalero', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trampská hudba', NULL, 'trampská hudba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trance metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trancestep', NULL, 'trancestep', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trap dancehall', 'dancehall', 'dancehall', 'hip hop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trap edm', 'edm', 'edm', 'hip hop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trap latino', NULL, 'trap latino', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trap metal', 'metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trap shaabi', 'shaabi', 'shaabi', 'hip hop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trap soul', 'soul', 'soul', 'hip hop', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trapfunk', NULL, 'trapfunk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tread', NULL, 'tread', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tribal ambient', 'ambient', 'ambient', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tribal guarachero', NULL, 'tribal guarachero', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tribal house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trikitixa', NULL, 'trikitixa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trip hop', 'hip hop', 'hip hop', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('troparion', NULL, 'troparion', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tropical house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tropical rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tropicália', NULL, 'tropicália', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tropicanibalismo', NULL, 'tropicanibalismo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tropipop', NULL, 'tropipop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trot', NULL, 'trot', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('trova yucateca', NULL, 'trova yucateca', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('truck driving country', 'country', 'country', 'country', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tsapiky', NULL, 'tsapiky', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tsonga disco', 'disco', 'disco', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tsugaru-jamisen', NULL, 'tsugaru-jamisen', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tumba', NULL, 'tumba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tumba francesa', NULL, 'tumba francesa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('tumbélé', NULL, 'tumbélé', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('turbo-folk', NULL, 'turbo-folk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('turkish classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('turkish folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('turkish pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('turntablism', NULL, 'turntablism', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('twee pop', 'pop', 'pop', 'pop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('twerk', NULL, 'twerk', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('twoubadou', NULL, 'twoubadou', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('uaajeerneq', NULL, 'uaajeerneq', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('udigrudi', NULL, 'udigrudi', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('uk drill', 'drill', 'drill', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('uk funky', NULL, 'uk funky', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('uk garage', NULL, 'uk garage', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('uk hardcore', NULL, 'uk hardcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('uk jackin', NULL, 'uk jackin', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('uk street soul', 'soul', 'soul', 'r&b/soul', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('uk82', NULL, 'uk82', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('unakesa', NULL, 'unakesa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('underground hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('unyago', NULL, 'unyago', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('upopo', NULL, 'upopo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('uptempo hardcore', NULL, 'uptempo hardcore', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('urban contemporary gospel', 'contemporary gospel', 'gospel', 'religious', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('urban cowboy', NULL, 'urban cowboy', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('urtiin duu', NULL, 'urtiin duu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('urumi melam', NULL, 'urumi melam', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('us power metal', 'power metal', 'metal', 'metal', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('utopian virtual', NULL, 'utopian virtual', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('uyghur muqam', NULL, 'uyghur muqam', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('uzun hava', NULL, 'uzun hava', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('v-pop', NULL, 'v-pop', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vaigat', NULL, 'vaigat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vallenato', NULL, 'vallenato', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vals criollo', NULL, 'vals criollo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vals venezolano', NULL, 'vals venezolano', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('valsa brasileira', NULL, 'valsa brasileira', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vanera', NULL, 'vanera', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vapornoise', NULL, 'vapornoise', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vaportrap', NULL, 'vaportrap', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vaporwave', 'wave', 'wave', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vaudeville', NULL, 'vaudeville', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vaudeville blues', 'blues', 'blues', 'blues', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vedic chant', NULL, 'vedic chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('verbunkos', NULL, 'verbunkos', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('verismo', NULL, 'verismo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vietnamese bolero', 'bolero', 'bolero', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vietnamese classical', 'classical', 'classical', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('viking metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('viking rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('villancico', NULL, 'villancico', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vinahouse', NULL, 'vinahouse', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('visa', NULL, 'visa', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('visual kei', NULL, 'visual kei', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vocal house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vocal jazz', 'jazz', 'jazz', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vocal surf', 'surf', 'surf', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vocal trance', 'trance', 'trance', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vocalese', NULL, 'vocalese', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('volkstümliche musik', NULL, 'volkstümliche musik', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('vude', NULL, 'vude', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('wa euro', NULL, 'wa euro', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('waka', NULL, 'waka', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('wangga', NULL, 'wangga', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('war metal', 'metal', 'metal', 'metal', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('wassoulou', NULL, 'wassoulou', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('waulking song', NULL, 'waulking song', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('weightless', NULL, 'weightless', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('west coast breaks', 'breaks', 'breaks', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('west coast hip hop', 'hip hop', 'hip hop', 'hip hop', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('west coast swing', 'swing', 'swing', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('western classical', 'classical', 'classical', 'classical/opera', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('western swing', 'swing', 'swing', 'jazz', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('whale song', NULL, 'whale song', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('whistling', NULL, 'whistling', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('white voice', NULL, 'white voice', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('winter synth', NULL, 'winter synth', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('witch house', 'house', 'house', 'electronic', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('wong shadow', NULL, 'wong shadow', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('wonky', NULL, 'wonky', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('wonky techno', 'techno', 'techno', 'electronic', TRUE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('work song', NULL, 'work song', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('world fusion', NULL, 'world fusion', 'jazz', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('worldbeat', NULL, 'worldbeat', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('wyrd folk', 'folk', 'folk', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('xẩm', NULL, 'xẩm', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('xaxado', NULL, 'xaxado', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('xian psych', NULL, 'xian psych', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('xote', NULL, 'xote', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('xuc', NULL, 'xuc', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('yacht rock', 'rock', 'rock', 'rock', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('yakousei', NULL, 'yakousei', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('yangzhou opera', 'opera', 'opera', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('yaraví', NULL, 'yaraví', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('yayue', NULL, 'yayue', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('yé-yé', NULL, 'yé-yé', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ytpmv', NULL, 'ytpmv', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('yu-mex', NULL, 'yu-mex', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('yue opera', 'opera', 'opera', 'classical/opera', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('yukar', NULL, 'yukar', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zamacueca', NULL, 'zamacueca', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zamba', NULL, 'zamba', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zamrock', NULL, 'zamrock', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zarzuela', NULL, 'zarzuela', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zarzuela barroca', NULL, 'zarzuela barroca', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zeitoper', NULL, 'zeitoper', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zema', NULL, 'zema', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zenonesque', NULL, 'zenonesque', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zess', NULL, 'zess', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zeuhl', NULL, 'zeuhl', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zeybek', NULL, 'zeybek', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zhongguo feng', NULL, 'zhongguo feng', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('ziglibithy', NULL, 'ziglibithy', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zinli', NULL, 'zinli', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('znamenny chant', NULL, 'znamenny chant', 'religious', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zoblazo', NULL, 'zoblazo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zohioliin duu', NULL, 'zohioliin duu', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zolo', NULL, 'zolo', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zouglou', NULL, 'zouglou', 'other', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('zouk love', NULL, 'zouk love', 'folk/world', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;

-- genres pour les podcasts

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('comedy', NULL,'comedy', 'comedy', 'assets/genres/comedy.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('culture', NULL,'culture', 'culture', 'assets/genres/culture.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('education', NULL,'education', 'education', 'assets/genres/education.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('gaming', NULL,'gaming', 'gaming', 'assets/genres/gaming.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('health', NULL,'health', 'health', 'assets/genres/health.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('history', NULL,'history', 'history', 'assets/genres/history.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('interview', NULL,'interview', 'interview', 'assets/genres/interview.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('music', NULL,'music', 'music', 'assets/genres/music.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('news', NULL,'news', 'news', 'assets/genres/news.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('other', NULL,'other', 'other', 'assets/genres/other.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('picole', NULL,'picole', 'picole', 'assets/genres/picole.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('politics', NULL,'politics', 'politics', 'assets/genres/politics.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('radio', NULL,'radio', 'radio', 'assets/genres/radio.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('religion', NULL,'religion', 'religion', 'assets/genres/religion.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('science', NULL,'science', 'science', 'assets/genres/science.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('spirituality', NULL,'spirituality', 'spirituality', 'assets/genres/spirituality.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('sports', NULL,'sports', 'sports', 'assets/genres/sports.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('sports_entertainment', NULL,'sports_entertainment', 'sports_entertainment', 'assets/genres/sports_entertainment.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('storytelling', NULL,'storytelling', 'storytelling', 'assets/genres/storytelling.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;

INSERT INTO genres (name, parent_name, root_genre, broad_family, cover_url)
VALUES ('technology', NULL,'technology', 'technology', 'assets/genres/technology.jpg')
ON CONFLICT (name) DO UPDATE SET
parent_name = EXCLUDED.parent_name,
root_genre = EXCLUDED.root_genre,
broad_family = EXCLUDED.broad_family,
cover_url = EXCLUDED.cover_url;