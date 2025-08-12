terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "custom_ubuntu_ssh" {
  name = "custom-ubuntu-ssh:latest"

  build {
    context    = "${path.module}/docker-ssh"
    dockerfile = "${path.module}/docker-ssh/Dockerfile"
  }
}

resource "docker_container" "web_server" {
  image = docker_image.custom_ubuntu_ssh.name
  name  = "web-server"

  ports {
    internal = 22
    external = 2222
  }

  ports {
    internal = 80
    external = 8080
  }
}
