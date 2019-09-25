resource "azurerm_virtual_network" "user10-Vnet" {
    name                = "user10-Vnet"
    address_space       = ["4.0.0.0/16"]
    location            = "Koreasouth"
    resource_group_name = "${azurerm_resource_group.user10-rg.name}"

    tags = {
        environment = "User10 Terraform Demo"
    }
}
