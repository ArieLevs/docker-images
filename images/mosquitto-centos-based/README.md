Mosquitto MQTT Broker Docker file
=================================

Mosquitto MQTT Broker with Auth-Plug docker image

Is a Linux Centos image,  
It contains the [mosquitto-auth-plug](https://github.com/jpmens/mosquitto-auth-plug),

Build
-----
Execute:  
```bash
docker build -t <DOCKER_REPO>/mosquitto/mosquitto:1.5.5 .
docker push <DOCKER_REPO>/mosquitto/mosquitto:1.5.5
```

For deploying the image on Kubernetes view [the helm chart](https://github.com/ArieLevs/Kubernetes-Helm-Charts/tree/master/charts/mosquitto)
