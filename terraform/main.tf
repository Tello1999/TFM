terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformDemo"
    storage_account_name = "strterraform"
    container_name       = "tfstatefile"
    key                  = "dev.terraform21559e3e-0db8-4b6d-a6ec-1a2043ddf0f4.tfstate"
  }
}
module "RG1" {
  source   = "./modules/RG"
  rgname   = "RgTFM"
  location = "East US"
}
module "SA1" {
  source   = "./modules/StorageAccount"
  sname    = "SaTFM"
  rgname   = "github-action"
  location = "East US"
}
