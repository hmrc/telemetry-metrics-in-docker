build: diagram
	docker-compose build 

kill:
	docker-compose kill

start: kill build
	docker-compose up -d

nuke:
	docker-compose down -v --rmi all
	rm -f diagram.png

ps:
	docker-compose ps

diagram:
	dot -Tpng diagram.dot > diagram.png
