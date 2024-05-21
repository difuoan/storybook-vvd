init:
	cp -n .env.example .env

up:
	docker compose up -d

start: up

down:
	docker compose down --remove-orphans

stop: down

tail:
	docker compose logs -f

build:
	docker compose build --no-cache

restart: down up

clear:
	rm .env

ps:
	docker compose ps

vitest:
	docker compose run --rm vitest