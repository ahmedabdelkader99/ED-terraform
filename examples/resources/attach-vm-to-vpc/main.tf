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

resource "vpsie_server" "attaching" {
  dc_identifier       = "53432a5b-7c65-11ed-a985-d2e1e5d48ad6"
  vm_identifier       = "0cbf06cf-3709-11f0-9da2-4602664ee99b"
  vpc_id              = 1952

}

output "server_test" {
  sensitive = true
  value     = vpsie_server.attaching
}
