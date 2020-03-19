Mosquitto MQTT Broker Docker file
=================================

Mosquitto MQTT Broker with Auth-Plug docker image

Is a Linux Centos image,  
It contains the [mosquitto-auth-plug](https://github.com/jpmens/mosquitto-auth-plug),

Build
-----
Execute:  
```bash
export dockerRepo=docker.io
./build.sh
```

For deploying the image on Kubernetes view [the helm chart](https://github.com/ArieLevs/Kubernetes-Helm-Charts/tree/master/charts/mosquitto)
