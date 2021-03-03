FROM ubuntu:18.04
RUN apt-get update 
RUN apt-get install apache2 -y 
RUN apt-get install apache2-utils -y
RUN apt-get clean 
COPY dist /var/www/html/
RUN service apache2 start
EXPOSE 80 
CMD apachectl -D FOREGROUND

