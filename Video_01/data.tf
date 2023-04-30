data "template_file" "user_data" {
  template = file(local.user_data_path)

  vars = {
    SSH_PUB_KEY = local.ssh_pub_key
    VERSION     = local.consul_version
    DC          = local.datacenter
  }
}