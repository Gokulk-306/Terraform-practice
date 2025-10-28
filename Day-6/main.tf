provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "AMI of the instance"
}

variable "instance_type" {
  description = "Instance type of the instance"
  type = map(string)

  default = {
    "dev" = "t3.micro"
    "stage" = "t3.medium"
    "prod" = "t3.xlarge"
  }
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t3.micro")
}