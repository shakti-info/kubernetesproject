FROM centos:latest
MAINTAINER Sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD http://www.free-css/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN cp -rvf luxury/*
CMD ["/usr/sbin/httpd", "-D", FOREGROUND"]
EXPOSE 80
