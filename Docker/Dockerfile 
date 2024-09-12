FROM ubuntu:latest
RUN apt update
RUN apt install apache2 -y
RUN apt install default-jdk -y
RUN mkdir /data
RUN touch /data/qtree-secrets.txt
WORKDIR /var/www/html
COPY index.html .
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]