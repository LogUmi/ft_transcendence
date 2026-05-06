-- Erase seeded data
TRUNCATE TABLE
	public.history_logs,
	public.histories
RESTART IDENTITY CASCADE;