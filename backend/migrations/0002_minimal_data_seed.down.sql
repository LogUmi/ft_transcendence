-- Drop trigger
DROP TRIGGER IF EXISTS public.trigger_set_user_in_channel_general ON users;
-- Drop function
DROP FUNCTION IF EXISTS public.set_user_in_channel_general;
-- Erase seeded data
TRUNCATE TABLE
	public.creators,
	public.genres,
	public.collections,
  	public.channel_members,
  	public.channels,
  	public.users
RESTART IDENTITY CASCADE;
