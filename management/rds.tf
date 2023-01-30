module "rds" {
  source  = "cloudposse/rds/aws"
  version = "0.40.0"
  engine_version  = "postgres"
  database_port = "5432"
  instance_class = "db.t3.micro"
  db_parameter_group = default.postgres13
  vpc_id = module.aws_vpc.vpc_id
}
