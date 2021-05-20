FROM oraclelinux:7-slim
MAINTAINER shankyx69@gmail.com
RUN yum install -y httpd \
  zip  \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/pro-line.zip /var/www/html
WORKDIR /var/www/html
RUN unzip pro-line.zip
RUN cp -rvf 2111_pro_line/* .
RUN rm -rf pro-line.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
#1234567
