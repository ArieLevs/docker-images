Mosquitto MQTT Broker Docker file
=================================

Mosquitto MQTT Broker with Auth-Plug docker image

Is a light Linux Alpine image and is based on the [official eclipe Docker file](https://github.com/eclipse/mosquitto/blob/master/docker/1.5/Dockerfile),  
It contains the [mosquitto-auth-plug](https://github.com/jpmens/mosquitto-auth-plug),
And MySQL as its backend.  

Config file is at: `/mosquitto/config/mosquitto.conf`

Build
-----
Execute:  
```bash
dockerRepo=docker.io

./build.sh ${dockerRepo}
```

For deploying the image on Kubernetes view [the helm chart](https://github.com/ArieLevs/Kubernetes-Helm-Charts/tree/master/charts/mosquitto)
