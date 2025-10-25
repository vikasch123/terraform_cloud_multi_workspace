variable "env" {
  type = string
}

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

variable "subnet_id" {
  type = string
}
