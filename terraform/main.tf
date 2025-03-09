terraform {
  backend "azurerm" {
    resource_group_name  = "TFM"
    storage_account_name = "terraformtfm"
    container_name       = "tfstatefile"
    key                  = "dev.terraform@@uuid@@.tfstate"
  }
}
