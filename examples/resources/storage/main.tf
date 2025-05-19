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

resource "vpsie_storage" "storage" {
    name = "testin-storage"
    dc_identifier = "8755b8ce-a863-11ec-b8c2-d2e1e5d48ad6"
    description = "created from terraform"
    size = 2
    storage_type = "SATA"
    disk_format = "XFS"
}

output "storage_test" {
    value = vpsie_storage.storage
}

