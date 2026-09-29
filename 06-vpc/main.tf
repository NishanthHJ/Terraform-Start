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
  id = "vpc-0f2266f7e49072a14"
}

import {
  to = aws_subnet.mysub
  id = "subnet-02542650cd331d4c5"
}

