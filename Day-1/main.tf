provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias = "us-east-2"
  region = "us-east-2"
}

resource "aws_instance" "Demo-instance" {
  ami = "ami-0360c520857e3138f"
  instance_type = "t2.micro"
  provider = aws.us-east-1
}

resource "aws_instance" "Demo-instance-2" {
  ami = "ami-0cfde0ea8edd312d4"
  instance_type = "t2.micro"
  provider = aws.us-east-2
}