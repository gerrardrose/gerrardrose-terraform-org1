variable "aws_region" {
  description = "AWS region"
  type        = string
}

# VPC variables
variable "vpc_name" {
  description = "Name of the vpc"
  type        = string
}
variable "vpc_cidr_block" {
  description = "CIDR block for webserver VPC"
  type        = string
}
variable "igw_name" {
  description = "Name for the Internet Gateway of the training vpc"
  type        = string
}
variable "public_subnet_1_cidr_block" {
  description = "CIDR block for the public subnet 1"
  type        = string
}
variable "public_subnet_2_cidr_block" {
  description = "CIDR block for the public subnet 2"
  type        = string
}
variable "public_subnet_3_cidr_block" {
  description = "CIDR block for the public subnet 3"
  type        = string
}
variable "private_subnet_1_cidr_block" {
  description = "CIDR block for the private subnet 1"
  type        = string
}
variable "private_subnet_2_cidr_block" {
  description = "CIDR block for the private subnet 2"
  type        = string
}
variable "private_subnet_3_cidr_block" {
  description = "CIDR block for the private subnet 3"
  type        = string
}
variable "public_subnet_1_name" {
  description = "Name for public subnet 1"
  type        = string
}
variable "public_subnet_2_name" {
  description = "Name for public subnet 2"
  type        = string
}
variable "public_subnet_3_name" {
  description = "Name for public subnet 3"
  type        = string
}
variable "private_subnet_1_name" {
  description = "Name for private subnet 1"
  type        = string
}
variable "private_subnet_2_name" {
  description = "Name for private subnet 2"
  type        = string
}
variable "private_subnet_3_name" {
  description = "Name for private subnet 3"
  type        = string
}
variable "public_subnet_1_az" {
  description = "Availability Zone for public subnet 1"
  type        = string
}
variable "public_subnet_2_az" {
  description = "Availability Zone for public subnet 2"
  type        = string
}
variable "public_subnet_3_az" {
  description = "Availability Zone for public subnet 3"
  type        = string
}
variable "private_subnet_1_az" {
  description = "Availability Zone for private subnet 1"
  type        = string
}
variable "private_subnet_2_az" {
  description = "Availability Zone for private subnet 2"
  type        = string
}
variable "private_subnet_3_az" {
  description = "Availability Zone for private subnet 3"
  type        = string
}
variable "public_rt_name" {
  description = "Name for the public route table of the training vpc"
  type        = string
}
variable "private_1_rt_name" {
  description = "Name for private 1 route table of the training vpc"
  type        = string
}
variable "private_2_rt_name" {
  description = "Name for private 2 route table of the training vpc"
  type        = string
}
variable "private_3_rt_name" {
  description = "Name for private 3 route table of the training vpc"
  type        = string
}

# EC2 variables
variable "ec2_instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
}
variable "ec2_instance_name" {
  description = "Instance type for EC2 instances"
  type        = string
}
variable "key_name" {
  description = "Instance key name"
  type        = string
}
variable "ec2_security_group_name" {
  description = "Security Group for EC2 instances"
  type        = string
}
