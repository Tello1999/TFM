module "SQLSERVER" {
  source                       = "./modules/SQL"
  servername                   = "@@servername@@"
  serverrgname                 = "@@serverrgname@@"
  serverlocation               = "@@serverlocation@@"
  administrator_login          = "@@administrator_login@@"
  administrator_login_password = "@@administrator_login_password@@."
  dbname                       = "@@dbname@@"
}

