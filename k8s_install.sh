helm install monitormodelapp prom-repo/kube-prometheus-stack --set prometheus.service.nodePort=30000 --set prometheus.service.type=NodePort --set grafana.service.nodePort=30001 --set grafana.service.type=NodePort

kubectl apply -f model-app.yml