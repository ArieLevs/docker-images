FROM alpine:3.4

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Argo CD cli"

ARG VERSION="v1.0.2"
ENV VERSION $VERSION

RUN apk add --update
RUN apk --no-cache add --virtual build-deps \
    ca-certificates \
    wget

RUN wget https://github.com/argoproj/argo-cd/releases/download/$VERSION/argocd-linux-amd64 && \
    mv argocd-linux-amd64 /usr/local/bin/argocd && \
    chmod +x /usr/local/bin/argocd

# Cleanup
RUN apk del build-deps

# Due to a common issue for golang apps
# User set fixes error: "Current not implemented on linux/amd64"
ENV USER argocd
RUN argocd version --client
