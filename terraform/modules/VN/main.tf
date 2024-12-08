resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = "East US"
  resource_group_name = "github-action"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }
}