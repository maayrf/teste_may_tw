provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/network/vpc"
  vpc_cidr = var.vpc_cidr
}

module "security_groups" {
  source = "./modules/security/security_groups"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/compute/ec2"
  vpc_id = module.vpc.vpc_id
  security_group_ids = module.security_groups.security_group_ids
}

module "ecr" {
  source = "./modules/ecr"
}
