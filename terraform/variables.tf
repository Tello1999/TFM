variable "rgname" {
  description = "Resource Group Name"
  default     = "github-action"
  type        = string
}
variable "location" {
  description = "Azure location"
  default     = "East US"
  type        = string
}
variable "sname" {
  description = "Azure Storage Account"
  type        = string
}

variable "vname" {
  description = "Virtual Network"
  type        = string
}
variable "servername" {
  description = "SQL Server"
  type = string
}
variable "serverrgname" {
  description = "RG del Server"
  type = string
}
variable "serverlocation" {
  description = "Location of the server"
  type = string
}
variable "adminlogin" {
  description = "User"
  type = string
}
variable "loginpass" {
  description = "password"
  type = string
}
variable "dbname" {
  description = "Base de Datos"
  type = string
}
