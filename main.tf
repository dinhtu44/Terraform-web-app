terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 2.13.0"
    }
  }
}
provider "docker" {
  host = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "terraform-docker-app" {
  name = "terraform-docker-app"
  build {
    path = "."
    tag  = ["terraform-docker-app:latest"]
  }
}

resource "docker_container" "terraform-docker-app" {
  image = docker_image.terraform-docker-app.latest
  name  = "TuVD11-webApp-using-terraform"
  ports {
    internal = 5000
    external = 5000
  }
}