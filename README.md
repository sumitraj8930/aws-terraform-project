# 🚀 **Terraform AWS EC2 Deployment**

This project provisions AWS resources using **Terraform** following **Infrastructure as Code (IaC)** practices.

---

## ✨ **Features**

- 🔐 SSH Key Pair creation
- 🌐 Default VPC usage
- 🔰 Security Group rules (22, 80, 8000)
- 🖥 EC2 instance provisioning
- 🏷 Resource tagging
- 🧹 `.gitignore` for sensitive files

---

## 🧰 **Tech Used**

- Terraform 🏗
- AWS EC2 ☁
- AWS VPC 🌐

---

## 📜 **Commands**

```bash
terraform init
terraform plan
terraform apply
terraform destroy
🧩 Concepts
⚙ Interpolation

🔐 Key Pair auth

🔰 Security Groups

🔐 Security
Ignored files:

*.pem
*.pub
terraform.tfstate
.terraform/
🧾 Prerequisites
✔ Terraform installed
✔ AWS CLI configured
✔ AWS Account

