
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


resource "vpsie_sshkey" "sshkey" {
  name        = "test-sshkey"
  private_key = file("~/.ssh/id_rsa")
}

output "sshkey_test" {
  value = vpsie_sshkey.sshkey
}