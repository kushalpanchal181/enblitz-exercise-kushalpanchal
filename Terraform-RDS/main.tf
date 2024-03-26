provider "aws" {
  region = "ap-south-1"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  identifier           = "database-01"
  username             = "myusername"
  password             = "mypassword"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot = true
}