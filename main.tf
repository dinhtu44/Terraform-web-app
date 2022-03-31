terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.7"
    }
  }
}
provider "docker" {
  version = "~> 2.7"
  host = "npipe:////.//pipe//docker_engine"
}

#resource "docker_image" "terraform_docker_app" {
#  name = "terraform_docker_app:latest"
#  keep_locally = false
  
#}

#resource "docker_container" "terraform_docker_app" {
#  image = docker_image.terraform_docker_app.latest
#  name  = "TuVD11-webApp-using-terraform"
#  ports {
#    internal = 5000
#    external = 5000
 # }
#}
