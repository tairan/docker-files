FROM nginx:latest

MAINTAINER Tairan Wang <tairan.wang@gmail.com>

RUN apt-get update \
    && apt-get install -y -q --no-install-recommends \
       ca-certificates \
       wget \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

