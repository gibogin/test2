resource "azurerm_subnet" "user10-SubnetA" {
    name                 = "user10-SubnetA"
    resource_group_name  = "${azurerm_resource_group.user10-rg.name}"
    virtual_network_name = "${azurerm_virtual_network.user10-Vnet.name}"
    address_prefix       = "4.0.1.0/24"
}
resource "azurerm_subnet" "user10-SubnetB" {
    name                 = "user10-SubnetB"
    resource_group_name  = "${azurerm_resource_group.user10-rg.name}"
    virtual_network_name = "${azurerm_virtual_network.user10-Vnet.name}"
    address_prefix       = "4.0.2.0/24"
}
