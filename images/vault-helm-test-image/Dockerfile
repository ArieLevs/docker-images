FROM python:3.9.2-alpine

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Vault Helm contributors test image"

ARG BATS_VERSION
ARG HELM_VERSION
ARG YQ_VERSION

RUN apk add --no-cache bash jq
RUN mkdir -p /build

# install bats-core
RUN cd /build && \
    wget https://github.com/bats-core/bats-core/archive/refs/tags/v${BATS_VERSION}.tar.gz -O bats-core.tar.gz && \
    tar -zxvf bats-core.tar.gz && \
    ./bats-core-${BATS_VERSION}/install.sh /usr/local

# intall helm
RUN cd /build && \
    wget https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz && \
    tar -zxvf helm-v${HELM_VERSION}-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/helm

# install yq
RUN pip install yq==${YQ_VERSION}

RUN rm -rf /build

ENTRYPOINT ["bash", "bats"]