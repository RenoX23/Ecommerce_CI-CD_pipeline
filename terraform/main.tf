provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ecommerce_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [aws_security_group.ecommerce_sg.name]

  tags = {
    Name = "EcommerceServer"
  }
}

resource "aws_security_group" "ecommerce_sg" {
  name        = "ecommerce_sg"
  description = "Allow inbound traffic for web app"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
