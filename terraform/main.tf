terraform {
  backend "azurerm" {
    resource_group_name  = "PipelinesTFM"
    storage_account_name = "strtfm"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}