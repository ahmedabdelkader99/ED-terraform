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

resource "vpsie_backup" "backup" {
  backup_key   = "2226"
  name            = "test backup"
  vm_identifier = "a532dd09-30ae-11f0-a853-4602664ee99b"
}

output "backup_test" {
  value = vpsie_backup.backup
}