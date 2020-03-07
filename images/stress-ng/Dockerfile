FROM debian:jessie as build_image

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Minimal container with stress-ng"

ARG STRESS_NG_VERSION
ENV STRESS_NG_VERSION $STRESS_NG_VERSION

RUN apt-get update && apt-get install -y make gcc

WORKDIR /build

# get stress-ng source code to /build and unarchive
ADD https://github.com/ColinIanKing/stress-ng/archive/V${STRESS_NG_VERSION}.tar.gz .
RUN tar -xvzf V${STRESS_NG_VERSION}.tar.gz
RUN mv stress-ng-${STRESS_NG_VERSION} src

WORKDIR /build/src
RUN STATIC=1 make

# Scratch image with binary only
FROM scratch

COPY --from=build_image /build/src/stress-ng /

ENTRYPOINT ["/stress-ng"]
