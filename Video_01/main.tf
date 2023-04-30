# ------------------------------------------------------------------------------
# MAIN
# ------------------------------------------------------------------------------
resource "aws_instance" "instance" {
  ami             = local.ami_id
  instance_type   = local.instance_type
  subnet_id       = local.subnet_id
  security_groups = [local.security_groups]
  user_data       = data.template_file.user_data.rendered

  tags = {
    Name = "ubuntu-cloud-init-test"
  }
}

output "ip" {
  value = aws_instance.instance.public_ip
}

output "http" {
  value = "http://${ aws_instance.instance.public_ip }:8500"
}
