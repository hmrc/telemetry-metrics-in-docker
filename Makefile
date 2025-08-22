DOCKER_COMPOSE ?= $(shell command -v docker-compose || echo "docker compose")


build: diagram
	cd haggar && docker build -t haggar .
.PHONY: build

kill:
	$(DOCKER_COMPOSE) kill
.PHONY: kill

start: kill build
	$(DOCKER_COMPOSE) up -d
.PHONY: start

nuke:
	$(DOCKER_COMPOSE) down -v --rmi all
	rm -f diagram.png
.PHONY: nuke

ps:
	$(DOCKER_COMPOSE) ps
.PHONY: ps


diagram:
	dot -Tpng diagram.dot > diagram.png
