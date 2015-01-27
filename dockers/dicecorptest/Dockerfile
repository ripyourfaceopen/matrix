FROM centos:6
MAINTAINER Kevin
RUN yum update -y
RUN yum install -y \
       httpd \
       php \
       mod_ssl \
       php-pecl-memcache \
       php-xml \
       php-gd php-devel \
       gcc
RUN yum clean all
EXPOSE 80
RUN pecl install redis
RUN rm -rf /etc/httpd/conf.d/default.conf
RUN mkdir -p /web/matrix/matrix && \
    mkdir /web/matrix/rest && \
    mkdir -p /usr/lib/php/Smarty
ADD index.php /web/matrix/index.php
ADD matrix.conf /etc/httpd/conf.d/
ADD matrix.ini /etc/php.d/
ADD matrix /web/matrix/matrix
ADD rest /web/matrix/rest
ADD Smarty /usr/lib/php/Smarty
RUN rm -f /web/matrix/matrix/config.ini && \
    rm -f /web/matrix/rest/config.ini && \
    rm -f /etc/php.d/redis.ini
RUN chown apache /web/ -R
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
