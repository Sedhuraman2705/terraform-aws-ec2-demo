provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0021a5ec77b393801" # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-demo-instance"
  }
}
