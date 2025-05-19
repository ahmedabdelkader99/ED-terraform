<!-- # Examples

This directory contains examples that are mostly used for documentation, but can also be run/tested manually via the Terraform CLI.

The document generation tool looks for files in the following locations by default. All other *.tf files besides the ones mentioned below are ignored by the documentation tool. This is useful for creating examples that can run and/or ar testable even if some parts are not relevant for the documentation.

* **provider/provider.tf** example file for the provider index page
* **data-sources/`full data source name`/data-source.tf** example file for the named data source page
* **resources/`full resource name`/resource.tf** example file for the named data source page

# Installing the project

**1- install terraform , go**

## HINT
in`go.mod` file\
   ``` in this line :replace github.com/ahmedabdelkader99/goEldelta => "/home/aake/Ahmad/eldelta/ED-terrafform/goEldelta```
   - make sure to use the path of your local SDK and replace it with /home/aake/Ahmad

**2- In the project dir `TERRAFORM-PROVIDER-ED-MAIN` DO THSES STEPS :**
  - go mod tidy 
  - go build -o ~/go/bin/terraform-provider-vpsie_v0.1.0
  - chmod +x ~/go/bin/terraform-provider-vpsie_v0.1.0 

**3- Add these lines on `sudo nano ~/.terraformrc`**\
provider_installation { 
  dev_overrides { 
    #MAKE SURE TO REPLACE `/home/aake`
    "registry.terraform.local/hashicorp/vpsie" = "/home/aake/go/bin" 
  } 
  direct {} 
}


**To start creating resources**
1- IN THE RESOURCE PATH , PASS THESE COMMAND IN TERMINAL 
- export VPSIE_ACCESS_TOKEN=" YOUR TOKEN "
- export VPSIE_API_URL="https://api.el-deltacloud.com/api/v2" -->
