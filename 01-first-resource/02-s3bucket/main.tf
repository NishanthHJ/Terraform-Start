provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "itkannadigaru-terraform-zero-to-hero"
}