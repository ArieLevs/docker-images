FROM node:12.18.2-alpine

ARG RETIRE_VERSION
ENV RETIRE_VERSION $RETIRE_VERSION

ARG BUILD_DATE

LABEL org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.schema-version="1.0"

RUN npm install -g retire@${RETIRE_VERSION}

WORKDIR /app

ENTRYPOINT ["retire"]
