#!/bin/bash

if [ ! -f `which openssl` ]
then
    yum install -y openssl
fi

if [ ! -d ./registry ]
then
    mkdir -p ./registry/{data,certs}
fi

cd ./registry/certs

openssl genrsa -out ca.key 4096
openssl req -new -key ca.key -out ca.csr
openssl x509 -req -days 365 -in ca.csr -signkey ca.key -out ca.crt


if [ ! -f `which docker-compose`]
then
    curl -L https://github.com/docker/compose/releases/download/1.3.3/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
fi

docker-compose up -d

docker-compose ps
