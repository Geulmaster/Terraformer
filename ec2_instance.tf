terraform {
  required_providers {
    aws = {
      source  = "aws"
    }
  }
}

# Configure the AWS Provider (Done it with environment variables)
provider "aws" {}

resource "aws_instance" "geulmaster" {
  ami           = "ami-0533f2ba8a1995cf9"
  instance_type = var.ec2_type
}

variable "ec2_type" {
  description = "EC2 instance type"
}

# resource "aws_vpc" "main" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#     Name = "production"
#   }
# }

# resource "aws_subnet" "subnet-1" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name = "prod-subnet"
#   }
# }