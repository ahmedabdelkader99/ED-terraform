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

resource "vpsie_image" "image" {
  fetched_from_url = "https://releases.ubuntu.com/24.04/ubuntu-24.04-live-server-amd64.iso"
  image_label      = "ubuntu-22.04.3"
  dc_identifier    = "53432a5b-7c65-11ed-a985-d2e1e5d48ad6"
}

output "image_test" {
  value = vpsie_image.image
}
