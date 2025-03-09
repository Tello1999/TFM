terraform {
  backend "azurerm" {
    resource_group_name  = "TFM"
    storage_account_name = "terraformtfm"
    container_name       = "tfstatefile"
    key                  = "dev.terraform6d449675-2741-432b-883d-4d80aa6aabde.tfstate"
  }
}
module "RG1" {
  source   = "./modules/RG"
  rgname   = "test"
  location = "East US"
}
module "SQLSERVER" {
  source         = "./modules/SQL"
  servername     = "unir"
  serverrgname   = "github-action"
  serverlocation = "East US"
  adminlogin     = "master"
  loginpass      = "4-v3ry-53cr37-p455w0rd."
  dbname         = "unir2"
}

