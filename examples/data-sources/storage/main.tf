# terraform {
#   required_providers {
#     vpsie = {
#         source = "registry.terraform.local/hashicorp/vpsie"
#     }
#   }
# }

# provider "vpsie" {
# }

# data "vpsie_storages" "all" {}

# output "storages" {
#     value = data.vpsie_storages.all
# }