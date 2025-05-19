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
  vm_identifier      = "adf7e70d-30b6-11f0-a853-4602664ee99b"
  storage_identifier = "12b32125-3170-11f0-b352-4602664ee99b"
  vm_type            = "vm"
}

output "attach_test" {
  value = vpsie_storage_attachement.attach
}