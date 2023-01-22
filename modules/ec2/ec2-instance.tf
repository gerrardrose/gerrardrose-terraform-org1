module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  instance_type = "t2.micro"
  ami = "ami-0c68b55d1c875067e"
}