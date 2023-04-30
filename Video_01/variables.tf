locals {
  entity      = "theautomationrules"
  environment = "testing"
  region      = "eu-central-1"
  team        = "IAC"
  creator     = "Terraform"
  part_of     = "ubuntu"

  ami_id          = "ami-0ec7f9846da6b0f61"
  instance_type   = "t2.micro"
  security_groups = "sg-014143a5a364c8b52"
  subnet_id       = "subnet-0f0843c606e2db446"

  user_data_path = "user_data/cloud-init.yaml"
  ssh_pub_key    = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL0j1QOgQCNJxq0BKR28eui9TFXYeudvJOTsomJ0MpGc theautomationrules@gmail.com"

  consul_version = "1.15.2"
  datacenter     = "aws"

}