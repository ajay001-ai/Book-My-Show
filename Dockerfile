FROM ubuntu:latest
WORKDIR /app
RUN apt upadte -y
RUN apt install apache2 -y
COPY . /var/www/html
EXPOSE 80
CMD [ "apachectl" ,"-D", "FOREGROUND" ]
