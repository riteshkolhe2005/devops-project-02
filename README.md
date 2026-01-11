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

<img width="1919" height="1129" alt="Screenshot 2026-01-11 113434" src="https://github.com/user-attachments/assets/fddf4353-63b5-4a9f-bf00-fa0e0d3131f1" />

---

## 📄 GitLab CI Pipeline Explanation (`.gitlab-ci.yml`)

### Pipeline Stages:
- **Validate**
  - `terraform fmt`
  - `terraform validate`
  - <img width="1919" height="1007" alt="Screenshot 2026-01-11 112746" src="https://github.com/user-attachments/assets/e26921c2-d048-4a8f-9d26-841e4c09a36c" />

- **Init**
  - Initializes Terraform backend and providers
- **Plan**
  - Shows infrastructure changes before applying
- **Apply**
  - Provisions cloud resources
  - Manual approval enabled for safety
  - <img width="1919" height="1005" alt="Screenshot 2026-01-11 112826" src="https://github.com/user-attachments/assets/c7e4e95e-533a-4a15-bf1f-393fa73661b6" />


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


### AWS Proofs

<img width="1919" height="1089" alt="Screenshot 2026-01-11 113009" src="https://github.com/user-attachments/assets/5f3db792-c764-4689-8b0e-4cdf6ad11150" />
<img width="1919" height="1090" alt="Screenshot 2026-01-11 112958" src="https://github.com/user-attachments/assets/d7c02a7c-8db9-4a75-8572-1886c5b03f7f" />
<img width="1919" height="1093" alt="Screenshot 2026-01-11 112926" src="https://github.com/user-attachments/assets/5503be42-3b5a-48b8-8d84-df3a7ba6d3e6" />
<img width="1919" height="1087" alt="Screenshot 2026-01-11 112905" src="https://github.com/user-attachments/assets/209d1980-ea84-4d6c-9d9a-cd99cc22c3fd" />



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
