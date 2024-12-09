output "rg_name" {
  value = {
    appname = module.RG1.resourcegroup_name.rg_name
  }
}