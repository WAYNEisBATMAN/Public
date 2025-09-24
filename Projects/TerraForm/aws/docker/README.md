# Terraform Docker Nginx Project

## 📌 Overview

This project provisions an **Nginx web server** inside a Docker container using **Terraform**.  
It demonstrates how Terraform can manage containerized workloads using the [Docker Provider](https://registry.terraform.io/providers/kreuzwerker/docker).

---

## 🚀 Features

- Pulls the latest Nginx Docker image
- Runs Nginx container with port mapping
- Uses variables for flexibility (container name, port, image)
- Outputs the URL to access the server

---

## 🛠️ Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) >= 1.12
- [Docker](https://docs.docker.com/get-docker/) installed and running

---

## 📂 Project Structure

main.tf        # resources
variables.tf   # input variables
outputs.tf     # outputs
provider.tf    # provider config


---

## ▶️ Usage

1. **Clone the repository**

   ```bash
   git clone https://github.com/<your-username>/terraform-docker-nginx.git
   cd terraform-docker-nginx

   ```

2. **Initialize Terraform**
   ```bash
   terraform init

   ```

3. **Plan the deployment**
   ```bash
   terraform plan

   ```

4. **Apply the configuration**
   ```bash
   terraform apply -auto-approve

   ```

5. **Access Nginx**

-> Local access (inside the EC2 instance)
If you SSH into the EC2 instance and run a browser or curl, use:
http://localhost:8080

-> External access (from your laptop / outside)
Use the public IP or public DNS of your EC2 instance:
http://<ec2-public-ip>:80


6. **Destroy resources**
   ```bash
   terraform destroy -auto-approve

   ```

---
