output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "ecr_repository_url" {
  value = module.ecr.repository_url
}