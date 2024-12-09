terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformDemo"
    storage_account_name = "strterraform"
    container_name       = "tfstatefile"
    key                  = "dev.terraform@@uuid@@.tfstate"
  }
}
