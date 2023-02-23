all: data db wp up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d
data:
	mkdir /home/saozcan/data
db:
	mkdir /home/saozcan/data/db
wp:
	mkdir /home/saozcan/data/wp

down:
	docker-compose -f ./srcs/docker-compose.yml down

.PHONY: up data db wp down
