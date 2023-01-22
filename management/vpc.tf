module "vpc" {
  source	= "../modules/vpc"
  aws_region	= var.aws_region
  vpc_cidr      = var.vpc_cidr
  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
}