
docker: clean image network
	docker run --name frontend \
		-p 8000:80 \
		--mount type=bind,src=$(shell pwd)/nginx.conf,dst=/etc/nginx/nginx.conf \
		--mount type=bind,src=$(shell pwd)/default.conf,dst=/etc/nginx/conf.d/default.conf \
		--mount type=bind,src=$(shell pwd)/index.html,dst=/usr/share/nginx/html/index.html \
		--net frontend \
		-d frontend

network:
	-docker network create -d bridge frontend

image: 
	docker build -t frontend .

clean:
	-docker stop frontend
	-docker rm -f frontend
	-docker network rm frontend