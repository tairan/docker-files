FROM python:2.7
MAINTAINER Tairan Wang <tairan.wang@gmail.com>

ENV PYTHONUNBUFFERED 1

RUN mkdir /env
WORKDIR /env
ADD requirements.txt /env/
RUN pip install -r requirements.txt

