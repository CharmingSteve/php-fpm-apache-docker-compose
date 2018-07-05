# php-fpm-apache-docker-compose

GO serverless with your old legacy Monolith. As part of this project we put Apache and Php-fpm inside containers connected with 
Docker-compose.<br />
we left the Volume of /var/www on the host for your php and html files, so you dont need to log into the containers.<br />
running the following command will launch the containers and make them run at boot always.<br />

from inside the Docker-compose-apache-php_fpm-master directory run:<br />
docker-compose up
<br />

This lauches 2 containers that talk to each other. fastCGI of php-fpm talks to apache on localhost, docker-compose takes care of the communication.
<br />
See the discussion about this project at <a href="http://charmingwebdesign.com/turn-monolith-server-of-lamp-stack-using-php-fpm-that-also-uses-mean-stack-into-microservices/">http://charmingwebdesign.com/turn-monolith-server-of-lamp-stack-using-php-fpm-that-also-uses-mean-stack-into-microservices/</a>
