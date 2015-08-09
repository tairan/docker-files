FROM python:2.7

MAINTAINER Tairan Wang <tairan.wang@gmail.com>

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

ENV SS_SERVER_ADDR 0.0.0.0
ENV SS_SERVER_PORT 1984
ENV SS_PASSWORD Passw0rd
ENV SS_METHOD aes-256-cfb
ENV SS_TIMEOUT 300

ADD shadowsocks.json /etc/
ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

EXPOSE $SS_SERVER_PORT

ENTRYPOINT ["/usr/bin/ssserver"]
