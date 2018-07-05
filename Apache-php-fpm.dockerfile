FROM centos:latest

RUN yum update -y 

# Install apache, PHP, and supplimentary programs. curl and lynx-cur are for debugging the container.
RUN yum  -y install apache2 php7.0  php-fpm 

ADD proxy.conf /etc/httpd/conf.d/proxy.conf #sets the php-fpm
ADD info.php /var/www/html/info.php
# Copy site into place.
ADD php /var/www/html/php


EXPOSE 80



# Update the default apache site with the config we created.
#ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf

# By default, simply start apache.
CMD /sbin/httpd  -D FOREGROUND
