FROM alpine:latest

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Minimal container with Kubectl"

ARG KUBECTL_VERSION
ENV KUBECTL_VERSION $KUBECTL_VERSION

RUN apk --no-cache add --virtual build-deps \
    ca-certificates \
    curl

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

# Cleanup
RUN apk del build-deps

RUN kubectl version --client=true
