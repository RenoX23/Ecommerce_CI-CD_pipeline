


# 🚀 E-Commerce Website with CI/CD Automated Deployment

This project is a simple, fully dockerized **e-commerce web application** deployed using an automated **CI/CD pipeline**. It demonstrates best practices for containerization, infrastructure as code (IaC) with Terraform, and GitHub Actions for continuous integration and deployments.

---

## 📝 Table of Contents
- [About the Project](#about-the-project)
- [Tech Stack](#tech-stack)
- [Architecture](#architecture)
- [Project Structure](#project-structure)
- [CI/CD Pipeline](#cicd-pipeline)
- [Infrastructure as Code (Terraform)](#infrastructure-as-code-terraform)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Author](#author)

---

## 📖 About the Project

The goal of this project is to develop and deploy a **modern e-commerce web application** that includes:
- A responsive product listing page.
- Dockerized backend and frontend.
- Automated deployments through **CI/CD pipelines**.
- Infrastructure provisioning via **Terraform**.

The pipeline automates:
- Code build & testing.
- Docker image building & pushing to Docker Hub.
- Remote server deployment using SSH.
- Infrastructure provisioning with AWS EC2 using Terraform.

---

## ⚙️ Tech Stack
| Technology       | Description                     |
|------------------|---------------------------------|
| Node.js          | Backend server & API            |
| HTML/CSS/JS      | Frontend static website         |
| Docker           | Containerization                |
| Terraform        | Infrastructure provisioning     |
| GitHub Actions   | CI/CD pipeline automation       |
| AWS EC2          | Deployment infrastructure       |

---

## 📐 Architecture
```
GitHub Repo (Push Code) 
        |
        v
GitHub Actions CI/CD Pipeline
        |
        +--> Run Tests & Lint Code
        +--> Build Docker Images
        +--> Push Images to Docker Hub
        +--> SSH into AWS EC2 & Deploy
```

---

## 📁 Project Structure
```
ecommerce-app/
├── public/                   # Frontend (HTML, CSS, JS)
│  ├── css/
│  │  └── style.css
│  ├── js/
│  │  └── app.js
│  └── index.html
├── server/                   # Backend (Node.js)
│  ├── controllers/
│  ├── models/
│  ├── routes/
│  └── server.js
├── .github/
│  └── workflows/ci-cd-pipeline.yml
├── deployment/               # Kubernetes YAML files
│  ├── deployment.yaml
│  ├── service.yaml
├── terraform/                # Terraform infrastructure as code
│  ├── main.tf
│  ├── variables.tf
│  ├── backend.tf
│  └── provider.tf
├── Dockerfile
├── docker-compose.yml
├── package.json
└── README.md
```

---

## ⚡ CI/CD Pipeline
This pipeline is configured using GitHub Actions.  
It performs the following steps:
1. Checkout code from the repository.
2. Run unit tests and linting.
3. Build Docker image.
4. Push Docker image to Docker Hub.
5. SSH into AWS EC2 and deploy the new image.

### `ci-cd-pipeline.yml` sample:
```yaml
name: CI/CD Pipeline
on:
  push:
    branches:
      - main
jobs:
  build:
    ...
  deploy:
    ...
```

---

## 🌎 Infrastructure as Code (Terraform)
The infrastructure is provisioned using Terraform and includes:
- AWS EC2 instances
- Security Groups (allow SSH and HTTP)
- Remote backend storage (S3 bucket and DynamoDB for state locking)

To deploy:
```bash
cd terraform/
terraform init
terraform apply -auto-approve
```

---

## 🚀 Getting Started

### Prerequisites
- Docker & Docker Compose
- Terraform CLI
- AWS CLI
- SSH Key for EC2 Access

### Clone the Repo
```bash
git clone https://github.com/RenoX23/Ecommerce_CI-CD_pipeline.git
cd Ecommerce_CI-CD_pipeline
```

### Run Locally (Optional)
```bash
docker-compose up --build
```

---



---

## 🙋 Author
**Your Name**  
- GitHub: [RenoX23](https://github.com/RenoX23)  
- LinkedIn: [renoldstephen](https://www.linkedin.com/in/renoldstephen/)

---

## 📝 License
This project is licensed under the MIT License - see the LICENSE file for details.

---

## 💡 Future Improvements
- Add Payment Gateway Integration
- Product Search & Filters
- User Authentication & Cart System
- Database Integration (MongoDB/PostgreSQL)
- Auto-scaling with AWS ECS/EKS

---


