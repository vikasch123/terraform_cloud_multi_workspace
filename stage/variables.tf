variable "cidr_block" {
  type = string
}
variable "public_subnet_cidrs" {
  type = list(string)
}
variable "ami" {
  type = string
}
variable "instance_type" {
  type = string
}
