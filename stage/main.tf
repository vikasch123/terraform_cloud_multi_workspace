terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
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
  subnet_id     = module.vpc_module.subnet_ids[0]

}
