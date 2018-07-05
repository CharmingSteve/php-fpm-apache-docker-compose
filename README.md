# php-fpm-apache-docker-compose

GO serverless with your old legacy Monolith. As part of this project we put Apache and Php-fpm inside containers connected with 
Docker-compose.
we left the Volume of /var/www on the host for your php and html files, so you dont need to log into the containers.
running the following command will launch the containers and make them run at boot always.

from inside the Docker-compose-apache-php_fpm-master directory run:
docker-compose up

