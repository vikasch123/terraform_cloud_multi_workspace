terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    workspaces {
      prefix = "django-chat-"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
  required_version = "~>1.0"
}


module "vpc_module" {
  source              = "./modules/networking"
  cidr_block          = var.cidr_block
  public_subnet_cidrs = var.public_subnet_cidrs
}


module "ec2_module" {
  source        = "./modules/compute"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

}
