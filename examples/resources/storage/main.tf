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

# resource "vpsie_storage" "storage" {
#     name = "ter-store"
#     dc_identifier = "55f06b85-c9ee-11e3-9845-005056aa8af7"
#     description = "created from terraform"
#     size = 2
#     storage_type = "SATA"
#     disk_format = "XFS"
# }

# output "storage_test" {
#     value = vpsie_storage.storage
# }


# resource "vpsie_storage_snapshot" "snap" {
#   name = "snapshot1"
#   type = "boxes"
#   storage_identifier = "af9eb912-5251-11ee-8bba-0050569c68dc"
# }

# output "snpa_test" {
#     value = vpsie_storage_snapshot.snap
# }


resource "vpsie_storage_attachement" "attach" {
  vm_identifier      = "ce2447f1-1ab9-11f0-b05b-4602664ee99b"
  storage_identifier = "0c57db78-78e6-11ef-8b15-e24f7cddce06"
  vm_type            = "vm"
}

output "attach_test" {
  value = vpsie_storage_attachement.attach
}