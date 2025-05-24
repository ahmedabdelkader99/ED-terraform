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

resource "vpsie_storage_attachement" "attach" {
  vm_identifier      = "8a9ba78f-36f8-11f0-9da2-4602664ee99b"
  storage_identifier = "077074b7-3704-11f0-9da2-4602664ee99b"
  vm_type            = "vm"
}

output "attach_test" {
  value = vpsie_storage_attachement.attach
}