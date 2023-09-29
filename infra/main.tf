# Spécifiez la version du provider Terraform
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

# Configurez le provider Docker
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Créez une image Docker
resource "docker_image" "build" {
  name         = "test-image"
  build {
    context = "../app"
  }
  keep_locally = true
}

# Créez un container Docker
resource "docker_container" "container" {
  image = "test-image"
  name  = "mon_container"
  ports {
    internal = 8000
    external = 8000
  }
}
