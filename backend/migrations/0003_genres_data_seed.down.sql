TRUNCATE TABLE
	public.genres,
RESTART IDENTITY CASCADE;
-------------------------------------------------------------------------------
-- Seed minimal of genres (référence)
INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('unknown', NULL, 'unknown', 'unknown', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;