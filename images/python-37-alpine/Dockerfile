FROM python:3.7-alpine

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Extended python 3.7 alpine"

RUN apk add --update alpine-sdk
RUN apk --no-cache add mariadb-connector-c-dev \
    gcc

# Pillow dependencies https://pillow.readthedocs.io/en/latest/installation.html
RUN apk add --no-cache \
    jpeg-dev \
    zlib-dev \
    freetype-dev \
    lcms2-dev \
    openjpeg-dev \
    tiff-dev \
    tk-dev \
    tcl-dev \
    harfbuzz-dev \
    fribidi-dev

RUN pip install --upgrade pip
RUN pip install pybump twine wheel flake8 virtualenv

RUN python --version
