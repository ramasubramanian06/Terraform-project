terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
 required_version = ">= 1.5.0"
}


provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "app_server" {
  ami           = "ami-006f82a1d5a27da54"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}



