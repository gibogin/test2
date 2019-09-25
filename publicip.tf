resource "azurerm_public_ip" "user10-PublicIP" {
    name                         = "user10-PublicIP"
    location                     = "Koreasouth"
    resource_group_name          = "${azurerm_resource_group.user10-rg.name}"
    allocation_method            = "Dynamic"

    tags = {
        environment = "user10 Terraform Demo"
    }
}

resource "azurerm_public_ip" "user10-PublicIP2" {
    name                         = "user10-PublicIP2"
    location                     = "Koreasouth"
    resource_group_name          = "${azurerm_resource_group.user10-rg.name}"
    allocation_method            = "Dynamic"

    tags = {
        environment = "user10 Terraform Demo"
    }
}
