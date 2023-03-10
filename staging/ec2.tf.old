module "aws_instance" {
  source            = "../modules/aws-instance"
  ec2_instance_type = var.ec2_instance_type
  ec2_instance_name = var.ec2_instance_name
  key_name 	    = var.key_name
  ec2_security_group_name    = var.ec2_security_group_name
  vpc_id            = module.aws_vpc.vpc_id
  subnet_id         = module.aws_vpc.subnet_id
}
