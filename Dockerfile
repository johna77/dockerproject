FROM oraclelinux:7-slim
MAINTAINER shankyx69@gmail.com
RUN yum install -y httpd \
  zip  \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html
WORKDIR /var/www/html
RUN unzip shine.zip
RUN cp -rvf shine/* .
RUN rm -rf shine.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
#123456789101
