module "SQLSERVER" {
  source                       = "./modules/SQL"
  servername                   = "@@servername@@"
  serverrgname                 = "@@serverrgname@@"
  serverlocation               = "@@serverlocation@@"
  administrator_login          = "@@adminlogin@@"
  administrator_login_password = "@@loginpass@@."
  dbname                       = "@@dbname@@"
}

