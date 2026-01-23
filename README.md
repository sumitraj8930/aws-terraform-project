# 🚀 **Terraform AWS EC2 Deployment**

This project uses Terraform to provision an EC2 instance on AWS and automatically installs Nginx, Docker, and Kubernetes tools using a user_data bootstrap script. It demonstrates practical Infrastructure as Code (IaC) with reusable variables, outputs, and secure resource management.

✨ Features

✔ Provision EC2 using Terraform
✔ Secure SSH Key Pair for remote access
✔ VPC + Security Group configuration
✔ Automated server bootstrap via install.sh
✔ Installs:

Nginx

Docker

kubectl + eksctl (for EKS workloads)

✔ Allows inbound:

SSH (22)

HTTP (80)

Custom Application (8000)

✔ Variables for flexibility and reuse
✔ Outputs for EC2 Public IP / DNS
✔ Sensitive files excluded via .gitignore

🧰 Tech Stack Used
Component	Purpose
Terraform	IaC provisioning
AWS EC2	Compute server
AWS VPC	Networking
Nginx	Web server
Docker	Container runtime
kubectl + eksctl	Kubernetes tooling
Linux	Server OS
📁 Project Structure
.
├── ec2.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── install.sh
└── .gitignore

🧩 Variables

Variables are defined in variables.tf for:

AMI ID

Instance Type

Root Volume Size

This makes the deployment customizable, reusable, and environment-friendly.

📤 Outputs

After deployment, Terraform prints:

Public IP

Public DNS

Private IP

Useful for:

✔ SSH
✔ Testing Nginx
✔ Verifying deployment

🖥️ Bootstrap Script

Nginx, Docker, and Kubernetes tools are installed automatically using:

user_data = file("install.sh")


Enables zero-touch provisioning and prepares the instance for containerized + Kubernetes workloads.

🔐 Security & State Handling

.gitignore excludes:

terra-key
terraform.tfstate
terraform.tfstate.backup
.terraform/


Prevents accidental exposure of:

✔ sensitive keys
✔ Terraform state
✔ backend metadata

🧪 Terraform Workflow
terraform init
terraform plan
terraform apply
terraform destroy

🎯 Use Cases

✔ Learning Terraform + AWS
✔ DevOps bootstrapping
✔ Nginx deployment automation
✔ EKS tooling environment
✔ IaC + cloud provisioning practice
