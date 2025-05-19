# Terraform Provider for VPSie

This directory contains examples that are mostly used for documentation but can also be run/tested manually via the Terraform CLI.

The document generation tool looks for files in the following locations by default. All other `*.tf` files besides the ones mentioned below are ignored by the documentation tool. This is useful for creating examples that can run and/or are testable even if some parts are not relevant for the documentation.

- **provider/provider.tf** example file for the provider index page  
- **data-sources/`full data source name`/data-source.tf** example file for the named data source page  
- **resources/`full resource name`/resource.tf** example file for the named resource page  

To install the project, first install both **Terraform** and **Go**. 
- in your `go.mod` file, make sure to replace the line:

```go
replace github.com/ahmedabdelkader99/goEldelta => "/home/aake/Ahmad/eldelta/ED-terrafform/goEldelta"
```

with your actual SDK path (replace `/home/aake/Ahmad` accordingly).

Next, in the root of your project directory `TERRAFORM-PROVIDER-ED-MAIN`, run:

```bash
go mod tidy
go build -o ~/go/bin/terraform-provider-vpsie_v0.1.0
chmod +x ~/go/bin/terraform-provider-vpsie_v0.1.0
```

Then, configure Terraform to use your local plugin by editing the Terraform CLI configuration file:

```bash
sudo nano ~/.terraformrc
```

Add the following:

```hcl
provider_installation {
  dev_overrides {
    #MAKE SURE TO REPLACE `/home/aake`
    "registry.terraform.local/hashicorp/vpsie" = "/home/aake/go/bin"
  }
  direct {}
}
```

To start creating resources, run the following in your terminal:

```bash
export VPSIE_ACCESS_TOKEN="YOUR TOKEN"
export VPSIE_API_URL="https://api.el-deltacloud.com/api/v2"
```

Make sure to replace `"YOUR TOKEN"` with your actual access token.

You’re now ready to use the Terraform provider for ED!