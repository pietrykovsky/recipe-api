FROM python:3.10.5-alpine3.16

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000

RUN python -m venv /py
RUN /py/bin/pip install --upgrade pip
RUN /py/bin/pip install -r /tmp/requirements.txt
RUN rm -rf /tmp
RUN adduser --disabled-password --no-create-home django-user

ENV PATH="/py/bin:$PATH"

USER django-user