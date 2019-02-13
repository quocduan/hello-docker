from ubuntu:latest
MAINTAINER QuocDuan<quocduan@gmail.com>

# Update ubuntu
RUN apt-get update

# Install nginx
RUN apt-get install -y nginx

WORKDIR /venv

COPY start.sh /venv

RUN chmod a+x /venv/*

ENTRYPOINT ["/venv/start.sh"]

EXPOSE 80





