# 🚀 Terraform Infrastructure Automation using GitLab CI/CD

## 📌 Project Overview
This project demonstrates a **production-style Infrastructure as Code (IaC) workflow using Terraform integrated with GitLab CI/CD**.  
The goal is to **automate cloud infrastructure provisioning** in a secure, repeatable, and version-controlled manner, following real-world DevOps best practices.

---

## 🛠️ Tech Stack
- **Infrastructure as Code:** Terraform
- **CI/CD:** GitLab CI/CD
- **Cloud Provider:** AWS (can be adapted to Azure / GCP)
- **State Backend:** Remote backend (S3 + DynamoDB)
- **Version Control:** GitLab
- **OS:** Linux (Ubuntu)
- **Security:** IAM, GitLab protected variables

---

## 🔄 CI/CD Flow (Step-by-Step)

1. Developer pushes Terraform code to GitLab
2. GitLab CI/CD pipeline is triggered automatically
3. GitLab Runner initializes Terraform
4. Terraform validates and formats configuration
5. Terraform generates an execution plan
6. Manual approval (for production)
7. Terraform applies infrastructure changes
8. Terraform state is securely stored in remote backend

---

## 📄 GitLab CI Pipeline Explanation (`.gitlab-ci.yml`)

### Pipeline Stages:
- **Validate**
  - `terraform fmt`
  - `terraform validate`
- **Init**
  - Initializes Terraform backend and providers
- **Plan**
  - Shows infrastructure changes before applying
- **Apply**
  - Provisions cloud resources
  - Manual approval enabled for safety

### Key Highlights:
- No credentials are hardcoded
- Uses GitLab protected environment variables
- Remote backend ensures safe state locking
- Clear separation of stages prevents accidental deployments

---

## 🚢 Deployment Strategy

- Infrastructure provisioning using **Terraform IaC**
- **Remote backend** for state consistency and locking
- Manual approval for production deployments
- Supports environment separation (`dev`, `staging`, `prod`)
- Immutable infrastructure approach

---

## ▶️ How to Run Locally

### Prerequisites
- Terraform installed
- Cloud CLI configured (AWS CLI)
- Git installed

### Steps
```bash
git clone <repository-url>
cd terraform-gitlab-cicd
terraform init
terraform validate
terraform plan
terraform apply



👨‍💻 Author

Ritesh Kolhe
Aspiring DevOps Engineer | Terraform | GitLab CI/CD | Cloud Automation

GitHub: https://github.com/riteshkolhe2005