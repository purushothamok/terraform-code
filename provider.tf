provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "purushotham-9966-s3"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "tca"
  }
}