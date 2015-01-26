FROM centos
MAINTAINER Kevin
RUN yum update -y
RUN yum install -y \
       httpd \
       php \
       mod_ssl \
       php-pecl-memcache \
       php-xml \
       php-gd php-devel
RUN yum clean all
EXPOSE 80
RUN rm -rf /etc/httpd/conf.d/default.conf
RUN mkdir -p /web/matrix/matrix && \
    mkdir /web/matrix/rest && \
    mkdir -p /usr/lib/php/Smarty
ADD matrix.conf /etc/httpd/conf.d/
ADD matrix.ini /etc/php.d/
ADD matrix /web/matrix/matrix
ADD rest /web/matrix/rest
ADD Smarty /usr/lib/php/Smarty
RUN chown apache /web/ -R
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
