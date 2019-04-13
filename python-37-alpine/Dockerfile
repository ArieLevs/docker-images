FROM python:3.7-alpine

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Extended python 3.7 alpine"

RUN apk add --update alpine-sdk
RUN apk --no-cache add mariadb-connector-c-dev \
    gcc

RUN pip install pybump twine wheel virtualenv
