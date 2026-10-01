provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}
resource "aws_instance" "ec2" {
  ami = "ami-0f8a61b66d1accaee"
  instance_type =  "t2.medium"
  security_groups = ["default"]
  root_block_device {
    volume_size = 30
    volume_type = "gp3"
    delete_on_termination = true

  }
  key_name = "K8s"
  user_data = file("Jenkins-server.sh")
  tags={
    Name = "Admin-Server"
  }
}
output "public_ip" {
  value = aws_instance.ec2.public_ip
}
