terraform {
  required_providers {
   vpsie = {
      source = "eldelta/ed"
      version = "0.1.0"    
      }
  }
}

provider "vpsie" {}

data "vpsie_storages" "storage" {}