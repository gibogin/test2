resource "azurerm_network_interface" "user10nic1" {
    name                = "user10nic1"
    location            = "Koreasouth"
    resource_group_name = "user10-rg"
    network_security_group_id = "${azurerm_network_security_group.user10nsg.id}"

    ip_configuration {
        name                          = "user10ip1"
        subnet_id                     = "${azurerm_subnet.user10-SubnetA.id}"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = "${azurerm_public_ip.user10-PublicIP.id}"
    }
}

resource "azurerm_network_interface" "user10nic2" {
    name                = "user10nic2"
    location            = "Koreasouth"
    resource_group_name = "user10-rg"
    network_security_group_id = "${azurerm_network_security_group.user10nsg2.id}"

    ip_configuration {
        name                          = "user10ip2"
        subnet_id                     = "${azurerm_subnet.user10-SubnetB.id}"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = "${azurerm_public_ip.user10-PublicIP2.id}"
    }
}

