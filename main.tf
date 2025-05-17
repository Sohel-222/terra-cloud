terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
 }
 
resource "aws_instance" "myec2" {
  ami           = "ami-0f88e80871fd81e91"
  instance_type = "t2.micro"
  tags = {
    Name = "Web_Server"
  }
}

resource "aws_instance" "yourec2" {
  ami           = "ami-0f88e80871fd81e91"
  instance_type = "t2.micro"
  tags = {
    Name = "App_Server"
  }
}


