output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.docker_instance.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.docker_instance.public_ip
}

output "ami_id" {
  description = "AMI ID used"
  value       = data.aws_ami.amazon_linux.id
}

output "kms_key_arn" {
  description = "KMS Key ARN used for EBS encryption"
  value       = data.aws_ebs_default_kms_key.default.key_arn
}

output "vpc_id" {
  description = "VPC ID where the instance is launched"
  value       = data.aws_vpc.default.id
}
