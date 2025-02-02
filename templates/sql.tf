module "SQLSERVER" {
  source = "./modules/SQL"
  servername = "servidorsql"
  serverrgname = "github-action"
  serverlocation = "East US"
  administrator_login = "master"
  administrator_login_password = "trabajomaster1."
}
module "dbsql" {
  source = "./modules/SQL/Server"
  dbname = "exampledb"
}
