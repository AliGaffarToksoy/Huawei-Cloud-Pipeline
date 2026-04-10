# ☁️ Huawei Cloud Enterprise GitOps Pipeline

> **Enterprise-Grade Cloud Engineering Platform**  
> Fully automated GitOps-driven CI/CD pipeline on Huawei Cloud, powered by Infrastructure as Code, Kubernetes orchestration, and zero-touch deployments.

---

<div align="center">

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Huawei Cloud](https://img.shields.io/badge/Huawei_Cloud-E60012?style=for-the-badge&logo=huawei&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)

</div>

---

## 🌍 Overview

This project demonstrates a **production-grade cloud-native DevOps pipeline** built entirely on **Huawei Cloud**.

It showcases how modern organizations:

- Provision infrastructure using **Infrastructure as Code (IaC)**  
- Deploy scalable microservices using **Kubernetes**  
- Automate delivery pipelines using **GitOps principles**  
- Achieve **zero-touch deployments** with CI/CD automation  

The system is designed to reflect **real enterprise environments**, focusing on scalability, reliability, and automation.

---

## 🏗️ Architecture Overview

### 🔁 End-to-End GitOps Workflow

```mermaid
flowchart LR

A[🧑‍💻 Developer Push] --> B[📦 GitHub Repository]
B --> C[⚙️ GitHub Actions CI/CD]

C --> D[🐳 Build Docker Image]
D --> E[📦 Huawei SWR Registry]

E --> F[☸️ CCE Kubernetes Cluster]
F --> G[🚀 FastAPI Microservice]

G --> H[🌐 LoadBalancer Service]
```

---

### 🧠 Architecture Breakdown

#### 1️⃣ Infrastructure as Code (Terraform)

- Automates provisioning of:
  - VPC (Virtual Private Cloud)
  - Subnets & networking
  - CCE (Cloud Container Engine) cluster
  - Worker node pools  

- Ensures:
  - Reproducibility  
  - Version-controlled infrastructure  
  - Zero manual configuration  

---

#### 2️⃣ Application Layer (FastAPI Microservice)

- High-performance Python API built with **FastAPI**
- Simulates an **AI-powered RAG (Retrieval-Augmented Generation)** system  
- Provides:
  - RESTful endpoints  
  - Interactive Swagger UI  
  - Scalable backend architecture  

---

#### 3️⃣ Containerization (Docker)

- Lightweight, secure container images  
- Multi-stage builds for optimization  
- Portable across environments  

---

#### 4️⃣ Kubernetes Orchestration (CCE)

- Managed Kubernetes via **Huawei Cloud CCE**
- Features:
  - High Availability (HA)
  - Self-healing pods
  - Rolling updates
  - Horizontal scalability  

---

#### 5️⃣ GitOps CI/CD Pipeline (GitHub Actions)

Fully automated pipeline:

- Detects code changes on push  
- Builds Docker image  
- Pushes to **Huawei SWR (Software Repository)**  
- Deploys to Kubernetes cluster  

✅ No manual intervention  
✅ Continuous delivery  
✅ Production-ready automation  

---

## ⚙️ Core Principles

- **Infrastructure as Code First** → Everything is declarative  
- **GitOps Driven** → Git is the single source of truth  
- **Cloud-Native Design** → Built for Kubernetes environments  
- **Automation by Default** → Zero-touch deployments  
- **Scalability & Resilience** → Enterprise-ready architecture  

---

## 📂 Repository Structure

```text
.
├── .github/workflows/
│   └── deploy.yaml         # CI/CD pipeline (build → push → deploy)
│
├── app/
│   ├── app.py              # FastAPI RAG simulation service
│   ├── Dockerfile          # Optimized container build
│   └── requirements.txt    # Python dependencies
│
├── infrastructure/
│   ├── provider.tf         # Huawei Cloud provider configuration
│   ├── network.tf          # VPC & subnet definitions
│   └── cce.tf              # Kubernetes cluster & node pool
│
└── k8s/
    └── deployment.yaml     # Deployment, Service & health checks
```

---

## 🚀 Getting Started

### ⚙️ Prerequisites

- Docker  
- Terraform  
- Huawei Cloud Account  
- kubectl  
- GitHub Actions enabled repository  

---

## 1️⃣ Run Locally (Development)

```bash
cd app
docker build -t huawei-ai-search:local .
docker run -d -p 8000:8000 --name api-test huawei-ai-search:local
```

Access API:

```
http://localhost:8000/docs
```

---

## 2️⃣ Provision Cloud Infrastructure

```bash
cd infrastructure
terraform init
terraform plan
terraform apply -auto-approve
```

This will automatically create:

- VPC & networking  
- Kubernetes (CCE) cluster  
- Node pools  

---

## 3️⃣ Deploy via CI/CD Pipeline

Push code to main branch:

```bash
git add .
git commit -m "feat: update service"
git push origin main
```

### 🔄 What Happens Automatically?

1. GitHub Actions pipeline is triggered  
2. Docker image is built  
3. Image is pushed to Huawei SWR  
4. Kubernetes deployment is updated  
5. New version rolls out with zero downtime  

---

## 🌐 Application Exposure

- Service is exposed via **LoadBalancer**
- Public endpoint automatically assigned  
- Scalable and production-ready access  

---

## 📊 Key Capabilities

- ⚡ Fully automated CI/CD pipeline  
- ☸️ Kubernetes-native deployment  
- 📦 Containerized microservices  
- ☁️ Cloud infrastructure provisioning (Terraform)  
- 🔄 GitOps-based lifecycle management  
- 🚀 Zero-downtime deployments  

---

## 🧠 What This Project Demonstrates

- Real-world **Cloud Engineering practices**  
- Enterprise-level **DevOps automation**  
- Kubernetes-based **application lifecycle management**  
- GitOps-driven **continuous delivery pipelines**  
- Infrastructure + Application **end-to-end ownership**  

---

## 👨‍💻 Developer

**Ali Gaffar Toksoy**  

Cloud Engineering • DevOps • AI Systems  

> "Modern infrastructure is not configured — it is declared, versioned, and automated."

---

## ⭐ Final Note

This project represents a **complete enterprise DevOps lifecycle**:

From infrastructure provisioning → to application deployment → to continuous delivery.

If you found this project useful, consider giving it a ⭐

---