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

resource "vpsie_vpc" "testing" {
  dc_identifier  = "53432a5b-7c65-11ed-a985-d2e1e5d48ad6"
  name           = "auto-genrate-vpc"
  description    = "test vpc"
  # network_range  = "10.10.10.0"
  # network_size   = "24"  
  auto_generate  = 1

  }
output "vpc_test" {
  value = vpsie_vpc.testing
}