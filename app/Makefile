.ONESHELL:

PASSWORD:=$(shell cat ../secrets/db.pass)

docker: clean image network
	docker run --name app \
		-p 6000:6000 \
		--net appnet \
		-e APP_PORT=6000 \
		-e DB_PASSWORD=$(PASSWORD)\
		-d app

network:
	-docker network create -d bridge appnet

image: 
	docker build -t app .

clean:
	-docker stop app
	-docker rm -f app
	-docker network rm appnet
