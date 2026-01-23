# 🚀 **Terraform AWS EC2 Deployment**

This project provisions an AWS EC2 instance using Terraform (IaC) and automatically bootstraps the server with Nginx, Docker, kubectl, and eksctl using a cloud-init (install.sh) script. It demonstrates practical DevOps automation for infrastructure provisioning, environment setup, and reusable configurations.

✨ Key Features

✔ Provision AWS EC2 instance with Terraform
✔ Automated Linux bootstrap via user_data
✔ Installs tools for cloud-native workloads:

Nginx (Web server)

Docker (Container runtime)

kubectl (Kubernetes CLI)

eksctl (EKS CLI)

✔ SSH key pair for secure access
✔ Security group with inbound:

SSH (22)

HTTP (80)

App Port (8000)

✔ Reusable variables for flexibility
✔ Helpful outputs for Public IP / DNS
✔ Sensitive assets excluded via .gitignore

🧰 Tech Stack
Component	Role
Terraform	Infrastructure as Code
AWS EC2	Compute
AWS VPC	Networking
Nginx	Web server
Docker	Containers
kubectl / eksctl	Kubernetes tooling
Linux	OS environment
📂 Project Structure
.
├── ec2.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── install.sh
└── .gitignore

⚙️ How It Works
Infrastructure Layer

Terraform provisions:

EC2 Instance

VPC networking

Security rules

SSH keys

IAM access

Resource tagging

Bootstrap Layer

install.sh automates:

Package updates

Nginx installation

Docker setup

Kubernetes tooling setup

Service enablement

This enables zero-touch server setup with DevOps tooling installed.

🧩 Variables

Configured via variables.tf for:

AMI ID

Instance type

Root volume size

Allows easy customization for environments (dev / test / training).

📤 Outputs

Terraform prints:

Public IP

Public DNS

Private IP

Useful for:
✔ SSH access
✔ HTTP testing
✔ Nginx validation

🚀 Deployment Commands
terraform init
terraform plan
terraform apply


To destroy resources:

terraform destroy

🔐 Security & State

.gitignore excludes:

terra-key
terraform.tfstate
terraform.tfstate.backup
.terraform/


Prevents leaking:
✔ SSH keys
✔ Terraform state
✔ Metadata
