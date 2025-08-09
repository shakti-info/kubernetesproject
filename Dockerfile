
FROM centos:latest

LABEL maintainer="Sanjay.dahiya332@gmail.com"

RUN yum install -y httpd zip unzip curl && \
    yum clean all

# Download the template
WORKDIR /tmp
RUN curl -L -o luxury.zip http://www.free-css.com/assets/files/free-css-templates/download/page258/luxury.zip && \
    unzip luxury.zip -d luxury && \
    cp -rvf luxury/* /var/www/html/ && \
    rm -rf /tmp/*

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
