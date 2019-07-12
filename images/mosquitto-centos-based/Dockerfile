FROM centos:7

LABEL maintainer="Arie Lev <levinsonarie@gmail.com>" \
      description="Eclipse Mosquitto MQTT Broker with Auth Plugin"

ENV VERSION=1.5.5

# Install temp build packages
RUN yum -y install epel-release make wget git gcc-c++ libxslt libwebsockets-devel

# Install permanent packages
RUN yum -y install libuuid-devel c-ares-devel openssl-devel mysql-devel

# install mosquitto
RUN yum -y install mosquitto

RUN set -x && \
    mkdir -p /build /mosquitto/config /mosquitto/data /mosquitto/log /mosquitto/certs && \
    cd /build && \
    git clone -b v${VERSION} https://github.com/eclipse/mosquitto.git && \
    make -C /build/mosquitto -j "$(nproc)" \
        WITH_DOCS=no \
        WITH_SRV=yes \
    install

RUN set -x && \
    echo "Setting Auth Plug" && \
    git clone https://github.com/jpmens/mosquitto-auth-plug.git && \
    cd mosquitto-auth-plug && \
    cp config.mk.in config.mk && \
    sed -i "s:MOSQUITTO_SRC =:MOSQUITTO_SRC = /build/mosquitto:" config.mk && \
    sed -i "s:OPENSSLDIR = /usr:OPENSSLDIR = /mosquitto/certs:" config.mk && \
    sed -i "s:SUPPORT_DJANGO_HASHERS ?= no:SUPPORT_DJANGO_HASHERS ?= yes:" config.mk && \
    sed -i "s:#if OPENSSL_VERSION_NUMBER://if OPENSSL_VERSION_NUMBER:" cache.c && \
    sed -i "s:#else://else:" cache.c && \
    sed -i 's:EVP_MD_CTX \*mdctx = EVP_MD_CTX_new://EVP_MD_CTX \*mdctx = EVP_MD_CTX_new:' cache.c && \
    sed -i "s:#endif://endif:" cache.c && \
    sed -i "s:EVP_MD_CTX_free://EVP_MD_CTX_free:" cache.c && \
    make && \
    cp auth-plug.so /mosquitto/config/auth-plug.so

# Clean build directory and unneeded packages
RUN rm -rf /build && \
    yum -y remove epel-release make wget git gcc-c++ libxslt libwebsockets-devel

# Set up the entry point script and default command
COPY docker-entrypoint.sh /
RUN chown -R mosquitto:mosquitto /mosquitto && \
    chown mosquitto:mosquitto /docker-entrypoint.sh && \
    chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
