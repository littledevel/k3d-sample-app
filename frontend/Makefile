.ONESHELL:


docker: clean image network
	docker run --name frontend \
		-p 8080:80 \
		--mount type=bind,src=$(shell pwd)/nginx.conf,dst=/etc/nginx/nginx.conf \
		--mount type=bind,src=$(shell pwd)/default.conf,dst=/etc/nginx/conf.d/default.conf \
		--mount type=bind,src=$(shell pwd)/index.html,dst=/usr/share/nginx/html/index.html \
		--net appnet \
		-d frontend

network:
	-docker network create -d bridge appnet

image: 
	docker build -t frontend .

clean:
	-docker stop frontend
	-docker rm -f frontend
	-docker network rm appnet
