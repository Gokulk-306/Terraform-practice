provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "gokul_instance" {
  instance_type = "t3.micro"
  ami = "ami-0360c520857e3138f"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "gokul-terraform-bucket-demo-east-1"
}