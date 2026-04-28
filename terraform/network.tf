# Resource group
resource "azurerm_resource_group" "rg" {
  name = "${var.prefix}-rg"
  location = var.location
}

# virtual network 
resource "azurerm_virtual_network" "vnet" {
 name = "${var.prefix}-vnet"
 location = azurerm_resource_group.rg.location
 resource_group_name = azurerm_resource_group.rg.name
 address_space = ["10.0.0.0/16"]
}

# Azure subnets
resource "azurerm_subnet" "aks_subnet" {
  name                 = "${var.prefix}-aks-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.240.0.0/16"]
}


