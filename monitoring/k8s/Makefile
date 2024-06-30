install:
	kubectl create ns monitoring
	helm install -n monitoring prometheus bitnami/kube-prometheus 
	helm install -n monitoring grafana bitnami/grafana
	helm install -n monitoring loki bitnami/grafana-loki

clean:
	helm uninstall -n monitoring prometheus
	helm uninstall -n monitoring grafana
	helm uninstall -n monitoring loki

