# Provider + Backend 


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
  # Default configuration uses local Docker host (unix:///var/run/docker.sock)
  # Provider settings can be customized, for example to connect to a remote Docker host over TCP (with or without TLS).}
}
