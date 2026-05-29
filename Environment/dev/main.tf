module "resource_group" {
  source = "../../modules/resource_group"

  rg_name = var.rg_name

}
module "virtual_network" {

  source = "../../modules/virtual_networks"
depends_on = [module.resource_group]
  rg_name   = module.resource_group.rg_name
  vnet_name = var.vnet_name
}
module "subnet" {

  source = "../../modules/subnet"
depends_on = [module.virtual_network]
  vnet_name = module.virtual_network.vnet_name
  subnet    = var.subnet
}
module "storage_account" {

  source = "../../modules/storage_account"
depends_on = [module.resource_group]
  rg_name          = module.resource_group.rg_name
  storage_acc_name = var.storage_acc_name

}
