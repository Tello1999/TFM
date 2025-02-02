resource "azurerm_mssql_server" "example" {
  name                         = var.servername
  resource_group_name          = var.serverrgname
  location                     = var.serverlocation
  version                      = "12.0"
  administrator_login          = var.adminlogin
  administrator_login_password = var.loginpass
}
resource "azurerm_mssql_database" "exampledb" {
  name         = var.dbname
  server_id    = azurerm_mssql_server.example.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"

  tags = {
    foo = "bar"
  }

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}
