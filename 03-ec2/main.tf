provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myinstance" {
  ami = "ami-0b245cc5f82576748"
  instance_type =  "t2.medium"
}