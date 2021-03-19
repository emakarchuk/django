#FROM nginx
#COPY index.html /usr/share/nginx/html
FROM python:3.7-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /helloworld_docker

COPY Pipfile Pipfile.lock /helloworld_docker/
RUN pip install pipenv && pipenv install --system

COPY . /helloworld_docker/