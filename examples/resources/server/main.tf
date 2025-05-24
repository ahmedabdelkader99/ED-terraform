terraform {
  required_providers {
    vpsie = {
      source = "registry.terraform.local/hashicorp/vpsie"
      version = "0.1.0"    
      }
  }
}

provider "vpsie" {
}

resource "vpsie_server" "testing" {
  project_id          = "923533c8-78c5-11ef-b05b-4602664ee99b"
  #project_id          = "1037"
  hostname            = "aa"
  dc_identifier       = "53432a5b-7c65-11ed-a985-d2e1e5d48ad6"
  os_identifier       = "dcc5e85d-5ba5-11ed-b1d1-0050569c68dc"
  resource_identifier = "b25aaad1-a865-11ec-b8c2-d2e1e5d48ad6"
  password            = "ExeMrq@y@6azxYQ"
  add_private_ip      = 1


}

output "server_test" {
  sensitive = true
  value     = vpsie_server.testing
}
