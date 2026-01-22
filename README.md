# 🚀 **Terraform AWS EC2 Deployment**

This project provisions an **EC2 instance on AWS using Terraform**, and automatically installs **Nginx** via `user_data` script.  
It demonstrates practical **Infrastructure as Code (IaC)** concepts with variables, outputs, and resource dependencies.

---

## ✨ **Features**

- 🏗️ EC2 provisioning using Terraform
- 🔐 SSH Key Pair for secure access
- 🌐 Default VPC + Security Group rules
- 📦 Automatic Nginx installation via `install_nginx.sh`
- 🔰 Allows inbound:
  - SSH (22)
  - HTTP (80)
  - Custom App (8000)
- 🧩 Variables for configuration flexibility
- 📤 Outputs for public IP / DNS
- 🧹 Git ignored sensitive & state files

---

## 🧰 **Tech Used**

- Terraform 🏗️
- AWS EC2 ☁
- AWS VPC 🌐
- Nginx 🌐

---

## 📁 **Project Structure**

.
├── ec2.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── install_nginx.sh
└── .gitignore


---

## 🧩 **Variables**

Defined in `variables.tf` and used for:

- AMI ID
- Instance Type
- Root Volume Size

Helps make configuration reusable and environment-friendly.

---

## 📤 **Outputs**

Terraform prints useful instance details after deployment:

- Public IP
- Public DNS
- Private IP

Useful for SSH access and testing Nginx.

---

## 🌐 **Nginx Installation**

Nginx is installed automatically using Terraform `user_data`:

```bash
user_data = file("install_nginx.sh")
The script runs on first boot and configures a basic HTTP server.

📜 Terraform Commands
terraform init
terraform plan
terraform apply
terraform destroy
🔐 Security
Ignored files include:

terra-key
terraform.tfstate
terraform.tfstate.backup
.terraform/
Prevents leaking sensitive data and state
