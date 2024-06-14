variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}
