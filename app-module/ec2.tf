
resource "aws_security_group" "allow_ports" {
  name        = var.security_group_name
  description = "Allow selected ports"
  vpc_id      = data.aws_vpc.default.id

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      description = "Allow ingress on port ${ingress.value}"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-ports"
  }
}

resource "aws_instance" "docker_instance" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  availability_zone           = var.availability_zone
  vpc_security_group_ids      = [aws_security_group.allow_ports.id]
  associate_public_ip_address = true

  ebs_block_device {
    device_name = "/dev/sdb"
    encrypted   = true
    kms_key_id  = data.aws_ebs_default_kms_key.default.key_arn
    volume_size = 40
    volume_type = "gp2"
  }

    user_data = file("${path.module}/userdata.sh")
    lifecycle {
        create_before_destroy = true
    }

  tags = {
    Name = "docker-ec2-instance"
  }
}
