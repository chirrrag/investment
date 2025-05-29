module "docker_ec2" {
  source = "./app-module"

  instance_type      = "t3a.medium"
  availability_zone  = "ap-south-1a"
}
