variable "image_name" {
  description = "Docker image for Nginx"
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "nginx-tf-container"
}

variable "internal_port" {
  description = "Internal port for accessing Nginx"
  type        = number
  default     = 80 # Nginx default port
}

variable "external_port" {
  description = "External port for accessing Nginx"
  type        = number
  default     = 80
}


