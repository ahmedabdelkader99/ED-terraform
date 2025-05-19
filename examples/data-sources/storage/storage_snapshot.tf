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

data "vpsie_storage_snapshots" "all" {}

output "storages" {
  value = data.vpsie_storage_snapshots.all
}