-------------------------------------------------------------------------------
-- Seed minimal of artists
INSERT INTO creators (name) VALUES
	('unknown')
ON CONFLICT (name) DO NOTHING;
-------------------------------------------------------------------------------
-- Seed minimal of genres (référence)
INSERT INTO genres (name, parent_name, root_genre, broad_family, is_ambiguous)
VALUES ('unknown', NULL, 'unknown', 'unknown', FALSE)
ON CONFLICT (name) DO UPDATE SET
  parent_name = EXCLUDED.parent_name,
  root_genre = EXCLUDED.root_genre,
  broad_family = EXCLUDED.broad_family,
  is_ambiguous = EXCLUDED.is_ambiguous;
-------------------------------------------------------------------------------
-- Seed minimal of albums
INSERT INTO collections (name) VALUES
	('unknown')
ON CONFLICT (name) DO NOTHING;
-------------------------------------------------------------------------------
-- Seed minimal of channels
INSERT INTO channels (title, is_private, is_individual) VALUES
	('general', false, false)
ON CONFLICT (title, is_individual) DO NOTHING;
-------------------------------------------------------------------------------
-- trigger && associate function creation
CREATE OR REPLACE FUNCTION set_user_in_channel_general()
RETURNS TRIGGER AS $$
DECLARE general_channel_id bigint;
BEGIN
    SELECT id
    INTO general_channel_id
    FROM channels
    WHERE title = 'general'
    LIMIT 1;

    IF general_channel_id IS NULL THEN
        RAISE EXCEPTION 'Channel "general" introuvable';
    END IF;

    INSERT INTO channel_members (channel_id, user_id)
    VALUES (general_channel_id, NEW.id)
    ON CONFLICT DO NOTHING;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_set_user_in_channel_general
AFTER INSERT ON users
FOR EACH ROW
EXECUTE FUNCTION set_user_in_channel_general();
-------------------------------------------------------------------------------
-- Seed minimal of users
INSERT INTO users (email, username, password_hash, role_name, is_active)
SELECT 'conductor@gmail.com', 'conductor', '$2a$10$RXgGiplY9ZgBvLjDrYiFWuhX3KickKkFzMwjYM.XPpnHFVFpaZ5jy', 'owner', true
WHERE NOT EXISTS (
	SELECT 1 FROM users
	WHERE email = 'conductor@gmail.com'
	OR username = 'conductor'
);