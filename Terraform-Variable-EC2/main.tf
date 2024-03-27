provider "aws" {
  region = var.region
}

resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    "Name" = "Terry-EC2"
  }
}
output "public_ip" {
  value = aws_instance.my_instance.public_ip
}

output "private_ip" {
  value = aws_instance.my_instance.private_ip
}