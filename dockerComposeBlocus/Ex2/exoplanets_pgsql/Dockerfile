# Utiliser une image de base officielle Node.js
FROM node:18-alpine

COPY exoplanets /var/www/exoplanets

WORKDIR /var/www/exoplanets
# Installer les dépendances
RUN npm install

# Exposer le port sur lequel l'application écoute
EXPOSE 3000

# Définir la commande de démarrage
CMD ["node", "app.js"]

