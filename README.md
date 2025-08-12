# Docker Web Server Automation with Terraform and Ansible

This project demonstrates how to automate the provisioning and configuration of a Docker container running an Ubuntu-based web server. It uses **Terraform** for infrastructure-as-code to build and run the container and **Ansible** for configuration management to install and set up Apache with a custom webpage.

---

## Features

- Custom Docker image with SSH server configured  
- Infrastructure provisioning using Terraform (builds image, runs container with port mappings)  
- Automated Apache web server installation and service management via Ansible  
- Deployment of a styled custom `index.html` webpage with footer fixed at bottom  
- SSH access exposed on port 2222, HTTP web server exposed on port 8080  

---

## Prerequisites

- Docker installed and running  
- Terraform installed  
- Ansible installed  
- Basic familiarity with CLI, Terraform, and Ansible  

---

## Setup & Usage

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/terraform-ansible-docker-webserver.git
   cd terraform-ansible-docker-webserver 

2. **Clone the repository**
   terraform init
   terraform apply

3. **Run the Ansible playbook to configure the web server**
   ansible-playbook -i inventory.ini playbook.yml

4. **Access the web server**
   http://localhost:8080




