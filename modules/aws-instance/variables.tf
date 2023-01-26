variable "ec2_instance_name" {
  description = "Name for training server EC2 instance"
  type        = string
}

variable "ec2_instance_type" {
  description = "Instance type for training server EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Instance key name"
  type        = string
}

variable "ec2_security_group_name" {
  description = "Security group name for training server EC2 instance"
  type        = string
}

variable "ec2_security_group_description" {
  description = "Security group description for training server EC2 instance"
  type        = string
  default     = "Allow traffic for training server"
}

variable "vpc_id" {
  description = "VPC id for training server EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet id for training server EC2 instance"
  type        = string
}
