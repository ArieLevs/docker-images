Kubectl Docker file
===================

Kubectl cli tool image

Is a Linux Alpine image

Build
-----
Execute to build **latest** version:  
```bash
LATEST_VERSION=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)

docker build \
    --build-arg VERSION=${LATEST_VERSION} \
    -t arielev/kubectl:${LATEST_VERSION} .
docker push arielev/kubectl:${LATEST_VERSION}
```

For deploying the image on Kubernetes view [the helm chart](https://github.com/ArieLevs/Kubernetes-Helm-Charts/tree/master/charts/mosquitto)
