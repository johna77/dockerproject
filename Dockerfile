FROM oraclelinux:7-slim
MAINTAINER shankyx69@gmail.com
RUN yum install -y httpd \
  zip  \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/comparto.zip /var/www/html
WORKDIR /var/www/html
RUN unzip comparto.zip
RUN cp -rvf templatemo_544_comparto/* .
RUN rm -rf comparto.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
#12345678910
