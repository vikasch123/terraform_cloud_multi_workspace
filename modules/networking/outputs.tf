output "vpc_id" {
  value = aws_vpc.vpc_main.id
}

output "subnet_ids" {
  value = aws_subnet.vpc_public_subnet[*].id
}
