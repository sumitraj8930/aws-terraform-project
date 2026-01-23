
# 🚀 **Terraform — AWS EC2 Deployment**

This project provisions an AWS EC2 instance using **Terraform (IaC)** and automatically bootstraps a Linux environment with **Nginx, Docker, kubectl, and eksctl** using `install.sh`. It demonstrates practical DevOps automation for infrastructure provisioning and cloud-native environment setup.

---

## ✨ **Key Features**

* Provision AWS EC2 instance using Terraform
* Automated Linux bootstrap via `user_data`
* Installs tools for cloud-native workloads:

  * Nginx (Web server)
  * Docker (Container runtime)
  * kubectl (Kubernetes CLI)
  * eksctl (EKS CLI)
* SSH key pair for secure access
* Security group inbound rules:

  * SSH (22)
  * HTTP (80)
  * App Port (8000)
* Reusable variables for configuration flexibility
* Helpful outputs for Public IP / DNS
* Sensitive state & secrets excluded via `.gitignore`

---

## 🧰 **Tech Stack**

| Tool             | Purpose                |
| ---------------- | ---------------------- |
| Terraform        | Infrastructure as Code |
| AWS EC2          | Compute                |
| AWS VPC          | Networking             |
| Nginx            | Web server             |
| Docker           | Container runtime      |
| kubectl / eksctl | Kubernetes tooling     |
| Linux            | Host OS                |

---

## 📂 **Project Structure**

```
.
├── ec2.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── install.sh
└── .gitignore
```

---

## ⚙️ **How It Works**

### **Infrastructure Layer**

Terraform provisions:

* EC2 instance
* VPC networking
* Security groups
* SSH key pair
* IAM access
* Resource tagging (recommended)

### **Bootstrap Layer**

`install.sh`:

* Updates packages
* Installs Nginx
* Installs Docker
* Installs Kubernetes tooling
* Enables system services

Results in **zero-touch deployment** ready for container workloads and EKS labs.

---

## 🧩 **Variables**

Defined in `variables.tf` for:

* AMI ID
* Instance type
* Root volume size

Supports reusability across dev/test environments.

---

## 📤 **Outputs**

After deployment Terraform prints:

* Public IP
* Public DNS
* Private IP

Useful for:

* SSH access
* Web testing
* Tool validation

---

## 🧪 **Terraform Workflow**

```sh
terraform init
terraform plan
terraform apply
```

Destroy resources:

```sh
terraform destroy
```

---

## 🔐 **Security & State Handling**

`.gitignore` excludes:

```
terra-key
terraform.tfstate
terraform.tfstate.backup
.terraform/
```

Prevents exposure of:

* Private keys
* State metadata
* Backend state files

---




