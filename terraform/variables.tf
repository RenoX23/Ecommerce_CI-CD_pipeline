variable "aws_region" {
  description = "AWS region for deployment"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-0abcdef1234567890" # Update this with a valid AMI
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "AWS Key Pair for SSH access"
  default     = "my-key-pair"
}

variable "bucket_name" {
  description = "S3 bucket for storing Terraform state"
  default     = "ecommerce-terraform-state"
}
