data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

resource "aws_security_group" "training_server" {
  name        = var.ec2_security_group_name
  description = var.ec2_security_group_description
  vpc_id      = var.vpc_id

  ingress {
    description      = "Allow traffic on port 80 from everywhere"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Allow traffic on port 22 from my IP"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["2.216.223.240/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.ec2_security_group_name
  }
}

resource "aws_instance" "training_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.ec2_instance_type
  key_name	= var.key_name

  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.training_server.id]

  tags = {
    Name = var.ec2_instance_name
  }

  user_data = <<-EOF
   #!/bin/bash
   sudo apt update -y
   sudo apt upgrade -y
   EOF
}
