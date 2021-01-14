#
#  Version 1.0
# This file will be used to build docker image of apache webserver with user webpages
#
FROM centos:latest
MAINTAINER  ramki_goud@yahoo.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/businesstoday.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip *.zip
RUN cp -rvf businesstoday/* .
RUN rm -rf *.zip
CMD ["/usr/sbin/httpd", "-D" , "FOREGROUND"
EXPOSE 80
