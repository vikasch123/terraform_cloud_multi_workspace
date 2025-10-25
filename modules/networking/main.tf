resource "aws_vpc" "vpc_main" {
  cidr_block = var.cidr_block
  tags = {
    Name = "vpc_main_${terraform.workspace}"
  }
}


resource "aws_subnet" "vpc_public_subnet" {
  count      = 2
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.public_subnet_cidrs[count.index]
  tags = {
    Name = "public_subnet_${count.index + 1}_${terraform.workspace}"
  }
}
