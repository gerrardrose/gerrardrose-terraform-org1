output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.training_vpc.id
}

output "subnet_id" {
  description = "ID of the VPC subnet"
  value       = aws_subnet.public_subnet_1.id
}
