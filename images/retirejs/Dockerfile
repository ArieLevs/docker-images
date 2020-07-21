FROM node:12.18.2-alpine

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Argo CD cli" \
      build-date=${BUILD_DATE}

ARG RETIRE_VERSION
ENV RETIRE_VERSION $RETIRE_VERSION

ARG BUILD_DATE

RUN npm install -g retire@${RETIRE_VERSION}

WORKDIR /app

RUN retire --version
