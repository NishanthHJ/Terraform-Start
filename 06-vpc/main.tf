provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Terraform-VPC"
  }
}

resource "aws_subnet" "mysub" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
    tags = {
        Name = "Terraform-sub"
    }
}

import {
  to = aws_vpc.myvpc
  id = "vpc-0b39b26a3933c6b80"
}

import {
  to = aws_subnet.mysub
  id = "subnet-0a66c45fa83156a04"
}