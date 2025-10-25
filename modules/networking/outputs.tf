output "vpc_id" {
  value = aws_subnet.vpc_main_subnet.id
}

output "subnet_ids" {
  value = aws_subnet.vpc_public_subnet[*].id
}
