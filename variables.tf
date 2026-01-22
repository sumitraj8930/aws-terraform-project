variable "ec2_instance_type" {
  default = "t3.micro"
  type    = string

}
variable "ec2_root_storage_size" {
  default = 15
  type    = number

}

variable "ec2_ami_id" {
  default = "ami-019715e0d74f695be" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  type    = string

}