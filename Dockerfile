FROM centos:latest

RUN yum update -y 

# Install apache, PHP, and supplimentary programs. curl and lynx-cur are for debugging the container.
RUN yum  -y install httpd php7.0 php-cgi  php-fpm php-mysqlnd php-pdo

ADD proxy.conf /etc/httpd/conf.d/
ADD info.php /var/www/html/
# Copy site into place.
ADD php /var/www/html/
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 9000
EXPOSE 80

# Update the default apache site with the config we created.
#ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf

# By default, simply start apache.

#CMD /sbin/php-fpm -F -R -c /etc/php-fpm.d
CMD /sbin/httpd  -D FOREGROUND
