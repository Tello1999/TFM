module "SQLSERVER" {
  source         = "./modules/SQL"
  servername     = "@@servername@@"
  serverrgname   = "@@serverrgname@@"
  serverlocation = "@@serverlocation@@"
  adminlogin     = "@@adminlogin@@"
  loginpass      = "@@loginpass@@."
  dbname         = "@@dbname@@"
}

