FROM debian:latest

LABEL author="Nicolas Venturini"
LABEL description="load-balancer apache"

# install apache
RUN apt-get update && apt-get install apache2 -y
# install module for load-balancer
RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod proxy_balancer
RUN a2enmod lbmethod_byrequests
# RUN systemctl restart apache2 ne fonctionnera pas. Il ne faut pas modifier l'image mais bien lancer apache dans le conteneur
# le start du service apache2 devra se faire dans le(s) conteneur(s) en fonctionnement donc CMD  en fin de Dockerfile !

# copy vhost load-balancer sur le site par défaut 
COPY httpd.conf /etc/apache2/sites-available/000-default.conf

# simple commentaire le load balancer tournera sur le port 80 dans le conteneur
EXPOSE 80
# démarrer apache dans le conteneur
CMD apachectl -D FOREGROUND
