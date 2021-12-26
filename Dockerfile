FROM centos:latest
#MAINTAINER: sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/free-css-templates/page274/resto /var/www/html
WORKDIR /var/www/html
RUN unzip resto.zip
RUN cp -rvf resto/* .
RUN rm -rf spourmo spourmo.zip resto resto.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

