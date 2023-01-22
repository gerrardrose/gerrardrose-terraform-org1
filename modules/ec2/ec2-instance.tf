module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  instance_type = "t2.micro"
  ami = var.ami
  key_name = var.key_name 
}