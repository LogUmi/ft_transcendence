DC := docker compose

up:
	$(DC) up -d --build

dev:
	$(DC) run --rm migrate
	$(DC) up -d --build

migrate:
	$(DC) run --rm migrate

down:
	$(DC) down

clean:
	$(DC) down

fclean:
	$(DC) down -v --rmi all

re:
	$(MAKE) fclean
	$(MAKE) migrate
	$(MAKE) up

rebuild:
	$(MAKE) fclean
	$(DC) build --no-cache
	$(MAKE) dev

.PHONY: up down dev migrate reset clean fclean re rebuild
