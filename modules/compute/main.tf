resource "aws_instance" "example" {
  count         = 2
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  tags = {
    Name = "aws_ec2_${count.index + 1}_${terraform.worksapce}"
  }
}
