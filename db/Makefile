.ONESHELL:
docker: clean image network
	mkdir -p data
	docker run --name db \
		-p 3306:3306 \
		--mount type=bind,src=$(shell pwd)/my.cnf,dst=/etc/my.cnf \
		--mount type=bind,src=$(shell pwd)/data,dst=/var/lib/mysql \
		--mount type=bind,src=$(shell pwd)/init.sql,dst=/docker-entrypoint-initdb.d/01.sql \
		--net=appnet \
		-d db

image: 
	docker build -t db .

network:
	-docker network create -d bridge appnet

clean:
	-docker stop db
	-docker rm -f db
	-docker network rm appnet
