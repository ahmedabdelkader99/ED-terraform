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


resource "vpsie_storage_snapshot" "snap" {
  name = "snapshot2"
  type = "boxes"
  storage_identifier = "2ca11415-316d-11f0-b352-4602664ee99b"
}
output "snpa_test" {
    value = vpsie_storage_snapshot.snap
}