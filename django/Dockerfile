FROM python:2.7

MAINTAINER Tairan Wang <tairan.wang@gmail.com>

ENV PYTHONUNBUFFERED 1
ENV VERSION 20150810
ENV DJANGO_PORT 8000

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app

VOLUME ["./app:/app"]

EXPOSE $DJANGO_PORT

ENTRYPOINT ["manage.py", "runserver", "$DJANGO_PORT"]
