# Utiliser le provider kreuzwerker/docker
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  # Vous pouvez laisser ce bloc vide si vous utilisez Docker localement, ou ajouter des options de connexion si nécessaire
}

# Etape 1 : Récupérer l'image Docker
resource "docker_image" "syllabushtml" {
  name = "olivierchoquet/syllabushtml:latest"
  keep_locally = true
}

# Etape 2 : Créer le conteneur
resource "docker_container" "syllabushtml_container" {
  name  = "syllabushtml"
  image = docker_image.syllabushtml.name  # Utiliser l'ID de l'image téléchargée
  ports {
    internal = 80
    external = 8080
  }
}

# Etape 3 : Le conteneur est déjà accessible sur le port 8080 via le mappage de ports

