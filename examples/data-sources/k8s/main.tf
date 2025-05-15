terraform {
  required_providers {
   vpsie = {
      source = "eldelta/ed"
      version = "0.1.0"    
      }
  }
}

provider "vpsie" {
}

data "vpsie_kubernetes_group" "all" {}

output "kubernetes_group" {
  value = data.vpsie_kubernetes_group.all
}