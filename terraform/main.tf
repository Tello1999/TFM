terraform {
  backend "azurerm" {
    resource_group_name  = "TFM"
    storage_account_name = "abc"
    container_name       = "tfstatefile"
    key                  = "dev.terraform@@uuid@@.tfstate"
  }
}
