.ONESHELL:


prometheus: clean network cadvisor
	docker run --name prometheus \
		-p 9090:9090 \
		--mount type=bind,src=$(shell pwd)/prometheus.yml,dst=/etc/prometheus/prometheus.yml \
		--net appnet \
		--net dbnet \
		--add-host host.docker.internal=host-gateway \
		-d prom/prometheus

cadvisor:
	docker run \
  	--volume=/:/rootfs:ro \
  	--volume=/var/run:/var/run:ro \
  	--volume=/sys:/sys:ro \
  	--volume=/var/lib/docker/:/var/lib/docker:ro \
  	--volume=/dev/disk/:/dev/disk:ro \
  	--publish=8090:8080 \
	--net appnet \
	--net dbnet \
  	--detach=true \
  	--name=cadvisor \
  	--privileged \
  	--device=/dev/kmsg \
  	gcr.io/cadvisor/cadvisor:v0.49.1

network:
	-docker network create -d bridge dbnet
	-docker network create -d bridge appnet


clean:
	-docker stop prometheus
	-docker rm -f prometheus
	-docker stop cadvisor
	-docker rm -f cadvisor
	-docker network rm dbnet
	-docker network rm appnet
