FROM alpine:3.8

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Ansible light linux alpine image"

RUN apk update
RUN apk add --no-cache \
    ansible

RUN ansible --version
