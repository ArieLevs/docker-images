FROM python:3.6-alpine

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Extended python 3.6 alpine"

RUN apk add --update alpine-sdk
RUN apk --no-cache add mariadb-connector-c-dev \
    gcc

RUN pip install pybump twine wheel
# RUN apk add --update alpine-sdk
