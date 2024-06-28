k3d-registry:
	k3d cluster create demo --registry-create codehub-local:40000 --agents 3 --servers 1 
