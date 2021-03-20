FROM python:3.7-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY Pipfile Pipfile.lock ./
RUN pip install pipenv && pipenv install --system

COPY . ./

WORKDIR /app/helloworld
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]
