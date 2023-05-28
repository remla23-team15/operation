# Operation
Contains all deployment files for Docker Compose, Kubernetes &amp; Helm.

## Setup
Follow the instructions to run the application locally.

Make sure you have Docker, Docker Compose, Kubernetes ans Helm installed.

### Clone
Clone the operation repository:
```bash
$ git clone https://github.com/remla23-team15/operation.git
```

## 3 ways to run the application:
Move into the `operation` folder and start the services by following one of the latter set of steps:

### Docker-Compose
```bash
$ docker-compose up -d
```

To access the main page of the application open your browser and go to:
```bash
localhost:8081
``` 
Type in a review and request a sentiment analysis! 

Access the metrics with:
```bash
localhost:8081/metrics
```

Access the Prometheus interface with the following command:
```bash
localhost:9090
```

and the Grafana interface with the following:
```bash
localhost:3000
```

Use "admin" and "admin" as username and password to login into grafana and search for the "Restaurants Reviews Sentiment" dashboard under the Dashboards menu.

To stop the run:
```bash
$ docker-compose down
```

### Kubernetes
```bash
# K8s configuration
$ helm install monitormodelapp prom-repo/kube-prometheus-stack --set prometheus.service.nodePort=30000 --set prometheus.service.type=NodePort --set grafana.service.nodePort=30001 --set grafana.service.type=NodePort

# App deployment
$ kubectl apply -f model-app.yml
```
Enable the communication (not necessary for Linux):
```bash
$ minikube tunnel
```
or 
```bash
$ minikube service model-app-serv --url
# and access the http://127.0.0.1:xxxxx from the output
```

To access the main page of the application open your browser and go to:
```bash
http://ip_address_of_minikube_ingress
``` 
Type in a review and request a sentiment analysis! 

Access the metrics with:
```bash
http://ip_address_of_minikube_ingress/metrics
```

Access the Prometheus interface with the following command:
```bash
http://ip_address_of_minikube_ingress:30000
```

and the Grafana interface with the following:
```bash
http://ip_address_of_minikube_ingress:30001
```

Use "admin" and "prom-operator" as username and password to login into grafana and search for the "Restaurants Reviews Sentiment" dashboard under the Dashboards menu.

To stop the app run:
```bash
$ kubectl delete -f model-app.yml

$ helm uninstall monitormodelapp
```

### Helm
```bash
# Install prometheus and grafana charts
$ helm install monitormodelapp prom-repo/kube-prometheus-stack --set prometheus.service.nodePort=30000 --set prometheus.service.type=NodePort --set grafana.service.nodePort=30001 --set grafana.service.type=NodePort

# Install the app chart
$ helm install <release_name> ./model_app
```

To access the app, follow the same steps listed in the **Kubernetes** section above.

To stop the run:
```bash
# Unistall the app chart
$ helm uninstall <release_name>

# Uninstall prometheus and grafana charts
$ helm uninstall monitormodelapp
```

## Contributors

REMLA 2023 - Group 15
