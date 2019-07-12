Kubectl Docker file
===================

Kubectl cli tool image

Is a Linux Alpine image

Build
-----
Execute to build **latest** version:  
```bash
dockerRepo=docker.io

./build.sh ${dockerRepo}
```

For deploying the image on Kubernetes view [the helm chart](https://github.com/ArieLevs/Kubernetes-Helm-Charts/tree/master/charts/mosquitto)
