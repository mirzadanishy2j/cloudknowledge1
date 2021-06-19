FROM centos:latest
MAINTAINER danishbeg998@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/chillaid.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip chillaid.zip
RUN cp -rvf chillaid/* .
RUN rm -rf chillaid chillaid.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
