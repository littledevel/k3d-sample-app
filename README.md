# PersonBook

A project to understand Docker and Kubernetes.
Most work can be done through the Makefiles.

The basic Makefile creates a k3d cluster with a registry and a local volume mounted.

The structure of the project is:

- frontend -> Frontend NGinX based application
- app -> Python based backed app
- db -> MySQL database

## Instructions for kubernetes demo

1. Run make in the root folder to create k3d cluster
2. Check all pods are running 
3. Go into each folder of the apps (app, frontend, db) and run make image
4. The make image command pushes images of the apps to the local registry
5. Inside each app folder there is a k8s folder with the yaml manifests
6. We can deploy everything by applying those folders: `kubectl apply -f k8s`
7. Alternatively inside each folder there is a chart with a helm chart for each app
8. We can install the apps in K8s using helm charts using this command: `helm install <appname> <chart-folder>`
9. There is an extra folder called monitoring containing some a Makefile to install monitoring tools either using docker or kubectl
10. You can check access of any service use port forward: `kubectl port-forward service/<service_name> LocalPort:ContainerPort
