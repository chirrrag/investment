variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3a.medium"
}

variable "availability_zone" {
  description = "AWS Availability Zone"
  type        = string
  default     = "ap-south-1a"
}

variable "ingress_ports" {
  description = "List of ingress ports to allow"
  type        = list(number)
  default     = [8081]
}

variable "security_group_name" {
  description = "Name for the security group"
  type        = string
  default     = "multi-port"
}
