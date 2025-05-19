terraform {
  required_providers {
    vpsie = {
      source  = "registry.terraform.local/hashicorp/vpsie"
      version = "0.1.0"
    }
  }
}

provider "vpsie" {}

resource "vpsie_domain" "domain" {
  domain_name         = "ahmad.com"
  project_identifier  = "923533c8-78clearc5-11ef-b05b-4602664ee99b"
}
