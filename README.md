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

### Kubernetes
```bash
# K8s configuration
$ kubectl apply -f model-app.yml
```
Enable the communication:
```bash
$ minikube tunnel
```
or 
```bash
$ minikube service model-app-serv --url
# and access the http://127.0.0.1:xxxxx from the output
```

### Helm
```bash
$ helm install <release_name> ./model_app
```


### ... and check it out!

To access the main page of the application open your browser and go to:
```bash
localhost:8081
``` 
Type in a review and request a sentiment analysis! 

Access the metrics with:
```bash
localhost/metrics
```

Access the Prometheus interface with the following command:
```bash
localhost:9090
```

and the Grafana interface with the following:
```bash
localhost:3000
```

## Contributors

REMLA 2023 - Group 15
