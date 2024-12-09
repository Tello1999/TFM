terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformDemo"
    storage_account_name = "strterraform"
    container_name       = "tfstatefile"
    key                  = "dev.terraforma4b924a2-af92-4eb6-b806-f274986c3ea5.tfstate"
  }
}
module "RG1" {
  source   = "./modules/RG"
  rgname   = "perez"
  location = "East US"
}
module "SA1" {
  source   = "./modules/StorageAccount"
  sname    = "xyzyk"
  rgname   = "github-action"
  location = "East US"
}
