FROM ubuntu:latest
MAINTAINER Francesco Zanti

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install -y apache2 
RUN apt-get install -y php 
RUN apt-get install -y php-mysql 
RUN apt-get install -y libapache2-mod-php 
RUN apt-get install -y php-curl 
RUN apt-get install -y php-json 
RUN apt-get install -y php-common 
RUN apt-get install -y php-mbstring 
RUN apt-get install -y composer

RUN apt install mariadb-server -y
RUN service mysql start

COPY ./app /var/www/html/app
RUN sed -i -e 's/devmysql/127.0.0.1/g' /var/www/html/app/index.php

CMD ["apachectl","-D","FOREGROUND"]
RUN a2enmod rewrite
EXPOSE 80
EXPOSE 443
EXPOSE 3306
