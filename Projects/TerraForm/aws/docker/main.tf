terraform {
  required_version = ">= 1.12.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.6.2" # Version of the TF docker provider, not direclty related the Docker Engine installed on ur machine.
    }
  }
}


provider "docker" {

}


resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false # Terraform removes the image from the local Docker host when you destroy the resource. 

}


resource "docker_container" "nginx" {
  image = docker_image.nginx.name
  name  = "nginx-tf-container"
  ports {
    internal = 80
    external = 80
  }

}
