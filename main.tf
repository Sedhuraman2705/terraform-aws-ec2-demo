provider "aws" {
  region = var.aws_region
}

# Get latest Amazon Linux 2023 AMI (official, no marketplace)
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Create EC2 instance
resource "aws_instance" "demo" {
  ami           = ami-002b032d8520decf5
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-demo-instance"
  }
}


