FROM centos:latest
MAINTAINER shankyx69@gmail.com
RUN yum install -y httpd \
  zip  \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page259/the-town.zip /var/www/html
WORKDIR /var/www/html
RUN unzip the-town.zip
RUN cp -rvf templatemo_525_the_town/* .
RUN rm -rf templatemo_525_the_town the-town.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
#1234
