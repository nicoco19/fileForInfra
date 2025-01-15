# RAPPEL DE L'OBJECTIF DE L'EXERCICE de BASE

Déployer la même application dans 3 conteneurs avec docker compose.

Déployer un vhost apache2 sur votre VM pour effectuer un load-balancing entre les 3 conteneurs.

# VARIANTE DE L'EXERCICE

Déployer la même application dans 3 conteneurs avec docker compose. 

Déployer un vhost apache2 sur votre VM pour effectuer un load-balancing entre les 3 conteneurs **dans un conteneur également**.

**Définir une variable d'environnement dans docker-compose.yml et l'utiliser dans le code**.

# DEMARCHE POUR LA RESOLUTION DE L'EXERCICE

1) Se documenter sur l'application

    -> simple application sans DB
    -> le fichier de démarrage s'appelle index.js
    -> **utiliser variable d'environnement en nodejs : process.env.NODE_ENV**
    

2) Faire un Dockerfile pour cette application nodejs.

3) Faire un docker-compose.yml déployant 3 conteneurs de cette même application

    -> choisir 3 ports différents qui seront exposés sur la VM (1 port par conteneur) 
    -> **inutile de choisir maintenant 3 ports exposés sur la vm car routage interne puisque le load-balancer est dans un conteneur**

5) Chgt vhost
    -> conteneurs des app accessible depuis le loadbalancer via leur nom réseau et le port 3000
    -> Ex:BalancerMember http://app3:3000

4) Test
    -> Ex : lynx http://localhost:9000 plusieurs fois sucessivement
    -> IP légèrement différentes ? OK
    -> Variable NODE_ENV affichée  ? OK