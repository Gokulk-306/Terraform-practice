provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "AMI value of the instance"
}

variable "instance_type" {
  description = "Instance_type of the instance"
}

resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
}
