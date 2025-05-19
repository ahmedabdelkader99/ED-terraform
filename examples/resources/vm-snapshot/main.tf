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


resource "vpsie_server_snapshot" "snapshoot" {
  name= "test-snapshot2"
  vm_identifier = "adf7e70d-30b6-11f0-a853-4602664ee99b"
  note= "testing snap terraform"
 }
output "snap-test" {
  value = vpsie_server_snapshot.snapshoot
}