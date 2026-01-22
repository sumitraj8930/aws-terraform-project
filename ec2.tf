# Key pair (login)
resource "aws_key_pair" "my_key" {
  key_name   = "my-key"
  public_key = file("terra-key.pub")

}


# VPC & Security Group
resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my_security_group" {
  name        = "automated-sg"
  description = "This will add a TF generated security group"
  vpc_id      = aws_default_vpc.default.id # interpolates the VPC ID from the default VPC resource

  tags = {
    Name = "automate-sg"
  }

  # Inbound rule to allow SSH access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound rule to allow all traffic

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

# Ec2 Instance

resource "aws_instance" "my_instance" {
  ami             = var.ec2_ami_id # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type   = var.ec2_instance_type
  key_name        = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.my_security_group.name]

  user_data = file("install_nginx.sh")

  root_block_device {
    volume_size = var.ec2_root_storage_size
    volume_type = "gp3"
  }

  tags = {
    Name = "MyTerraformInstance"
  }
}