FROM python:3.7-alpine

MAINTAINER PUNEET

ENV PYTHONUNBUFFERED 1

COPY ./requirments.txt /requirments.txt
RUN pip install -r /requirments.txt

RUN mkdir /apps
WORKDIR /apps
COPY ./apps /apps

RUN adduser -D user
USER user