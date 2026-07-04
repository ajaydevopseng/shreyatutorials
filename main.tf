resource "azurerm_resource_group" "testrg" {
  for_each = var.config
  name     = each.value.rgname
  location = each.value.location
}

resource "azurerm_storage_account" "teststoreacc" {
  for_each                 = var.config
  name                     = each.value.storageaccname
  resource_group_name      = each.value.rgname
  location                 = each.value.location
  account_tier             = each.value.accounttier
  account_replication_type = each.value.replitype
}

resource "azurerm_virtual_network" "testvnet" {
  for_each            = var.config
  name                = each.value.vnet_name
  address_space       = [each.value.address_space]
  resource_group_name = each.value.rgname
  location            = each.value.location
}
resource "azurerm_subnet" "testsubnet" {
  for_each             = var.config
  name                 = each.value.subnet_name
  resource_group_name  = each.value.rgname
  virtual_network_name = each.value.vnet_name
  address_prefixes     = [each.value.subnet_space]
}
