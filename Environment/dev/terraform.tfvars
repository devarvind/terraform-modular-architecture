rg_name = {
  rg_app = {
    name     = "rg_apple"
    location = "eastus"
  }
}

vnet_name = {
  vnet_nokia = {
    name                = "vnet_nokia"
    location            = "eastus"
    resource_group_name = "rg_apple"
    address_space       = ["10.0.0.0/16"]
  }

}

subnet = {
  subnet_nokia = {
    name                 = "subnet_nokia"
    resource_group_name  = "rg_apple"
    virtual_network_name = "vnet_nokia"
    address_prefixes     = ["10.0.1.0/24"]
  }

}

storage_acc_name = {
  stg_app = {
    name                     = "stapple121"
    azurerm_resource_group   = "rg_apple"
    location                 = "eastus2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}