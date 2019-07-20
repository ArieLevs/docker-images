FROM docker:stable

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Docker image with jenkins use in docker group"

RUN addgroup docker
RUN adduser jenkins --ingroup docker --disabled-password
