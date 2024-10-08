terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}



provider "aws" {
  region  = "us-east-1"
}



resource "aws_instance" "demo" {
  ami           = "ami-0ebfd941bbafe70c6"
  instance_type = "t2.micro"
  tags = {
    Name = "DemoInstance"
  }

}