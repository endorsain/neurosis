COMPOSE_FILE := docker-compose.yml
EXPO_APP := neurosis-expo-app
FASTIFY_API_REST := neurosis-fastify-api-rest
VITE := neurosis-vite

.PHONY: up build down logs start-api start-vite

up:
	docker compose up -d --build

down:
	docker compose down

start-api:
	docker compose up -d $(FASTIFY_API_REST)

start-vite:
	docker compose up -d $(VITE)

api-exec:
	docker compose exec $(FASTIFY_API_REST) $(COMMAND)

logs:
	docker compose logs -f

api-logs:
	docker compose logs -f $(FASTIFY_API_REST)
	
vite-logs:
	docker compose logs -f $(VITE)		
