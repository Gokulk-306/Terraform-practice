 terraform {
  backend "s3" {
    bucket = "gokul-terraform-bucket-demo-east-1"
    key    = "gokul/terraform.tfstate"
    region = "us-east-1"
  }
}
