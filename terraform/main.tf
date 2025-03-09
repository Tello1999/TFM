terraform {
  backend "azurerm" {
    resource_group_name  = "TFM"
    storage_account_name = "terraformTFM"
    container_name       = "tfstatefile"
    key                  = "dev.terraform@@uuid@@.tfstate"
  }
}
