FROM alpine:latest

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Minimal container with Helm"

ARG HELM_VERSION
ENV HELM_VERSION $HELM_VERSION

RUN apk add --no-cache ca-certificates
RUN mkdir -p /build && \
    cd /build && \
    wget https://storage.googleapis.com/kubernetes-helm/helm-v${HELM_VERSION}-linux-amd64.tar.gz
RUN cd /build && \
    tar -zxvf helm-v${HELM_VERSION}-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/helm

RUN rm -rf /build

RUN apk add py-pip
RUN pip install --upgrade pip
RUN pip install pybump

RUN helm init --client-only
RUN helm repo add nalkinscloud "https://arielevs.github.io/Kubernetes-Helm-Charts/" && \
    helm repo update
RUN helm version --client
