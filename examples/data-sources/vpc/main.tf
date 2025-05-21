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

data "vpsie_vpcs" "all" {}
output "vpcs" {
  value = data.vpsie_vpcs.all
}

# data "vpsie_images" "all" {}

# output "images" {
#   value = data.vpsie_images.all
# # }

# data "vpsie_storages" "all" {}

# output "storages" {
#     value = data.vpsie_storages.all
# }