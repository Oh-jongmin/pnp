FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y apache2 \
    && a2enmod proxy proxy_http \
    && rm -rf /var/lib/apt/lists/*

CMD ["apachectl", "-D", "FOREGROUND"]
