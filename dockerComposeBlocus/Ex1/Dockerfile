# Utilisation de l'image debian la plus récente
FROM debian

# Mise à jour des packages et installation d'Apache2
RUN apt-get update

RUN apt-get install apache2 -y 

# Copie du fichier VirtualHost personnalisé dans le conteneur
COPY siteHTML.conf /etc/apache2/sites-available/000-default.conf

COPY siteHTML /var/www/siteHTML
# Exposition du port 80 pour les requêtes HTTP
EXPOSE 80

# Commande pour démarrer Apache2 et garder le conteneur actif
CMD apachectl -D FOREGROUND
