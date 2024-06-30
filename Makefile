k3d-registry:
	mkdir -p $(HOME)/k3d-volumes
	k3d cluster create demo --registry-create codehub-local:40000 --agents 3 --servers 1 --volume $(HOME)/k3d-volumes:/var/lib/rancher/k3s/storage@all

clean:
	k3d cluster rm demo
	rm -rf $(HOME)/k3d-volumes

