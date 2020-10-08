FROM centos:latest
MAINTAINER shankyx69@gmail.com
RUN yum install -y httpd \
  zip  \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page259/vanilla.zip /var/www/html
WORKDIR /var/www/html
RUN unzip vanilla.zip
RUN cp -rvf templatemo_526_vanilla/* .
RUN rm -rf templatemo_526_vanilla vanilla.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
