PASSWORD:=$(shell cat ../secrets/db.pass)

docker: clean image network
	docker run --name app \
		-p 6000:6000 \
		--net dbnet \
		--net frontend \
		-e APP_PORT=6000 \
		-e DB_PASSWORD=$(PASSWORD)\
		-d app
#run: venv
#	. venv/bin/activate; cd src; python3 -m flask run 

#venv:
#	virtualenv venv
#	. venv/bin/activate; cd src; pip install -Ur requirements.txt

network:
	-docker network create -d bridge dbnet
	-docker network create -d bridge frontend

image: 
	docker build -t app .

clean:
#	-deactivate
#	rm -rvf venv
	-docker stop app
	-docker rm -f app
	-docker network rm dbnet
	-docker network rm frontend