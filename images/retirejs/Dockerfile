FROM node:12.21.0-alpine

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="node container with retire.js tool" \
      build-date=${BUILD_DATE}

ARG RETIRE_VERSION
ENV RETIRE_VERSION $RETIRE_VERSION

ARG BUILD_DATE

RUN npm install -g retire@${RETIRE_VERSION}

WORKDIR /app

RUN retire --version
