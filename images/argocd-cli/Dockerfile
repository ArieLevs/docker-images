FROM alpine:3.4

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Argo CD cli"

ARG ARGOCD_CLI_VERSION
ENV ARGOCD_CLI_VERSION $ARGOCD_CLI_VERSION

RUN apk add --update
RUN apk --no-cache add --virtual build-deps \
    ca-certificates \
    wget

RUN wget https://github.com/argoproj/argo-cd/releases/download/$ARGOCD_CLI_VERSION/argocd-linux-amd64 && \
    mv argocd-linux-amd64 /usr/local/bin/argocd && \
    chmod +x /usr/local/bin/argocd

# Cleanup
RUN apk del build-deps

# Due to a common issue for golang apps
# User set fixes error: "Current not implemented on linux/amd64"
ENV USER argocd
RUN argocd version --client
