# Oneshell permits to run more than one commands in a single shell session
.ONESHELL:
PASSWORD:=$(shell cat ../secrets/db.pass)
# make docker command creates a db docker
# it starts by creating a network
# then it mounts bind the local files my.cnf and init.sql to files inside the container
# it also binds the folder data we create here in the container also to be used for mysql data
docker: clean image network
	mkdir -p data
	docker run --name db \
		-p 3306:3306 \
		--mount type=bind,src=$(shell pwd)/my.cnf,dst=/etc/my.cnf \
		--mount type=bind,src=$(shell pwd)/data,dst=/var/lib/mysql \
		--mount type=bind,src=$(shell pwd)/init.sql,dst=/docker-entrypoint-initdb.d/01.sql \
		--net=dbnet \
		-d db

# make image just builds our image
image: 
	docker build -t db --build-arg DB_PASSWORD=$(PASSWORD) .

# make network prepares the network
network:
	-docker network create -d bridge dbnet

# make clean to clean up resources
clean:
	-docker stop db
	-docker rm -f db
	-docker network rm dbnet
