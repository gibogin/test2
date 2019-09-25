resource "azurerm_virtual_machine" "myterraformvm2" {
        name            = "myVM2"
        location        = "koreasouth"
        resource_group_name   = "${azurerm_resource_group.user10-rg.name}"
        network_interface_ids = ["${azurerm_network_interface.user10nic2.id}"]
        vm_size = "Standard_DS1_v2"

storage_os_disk {
        name    = "myOsDisk2"
        caching = "ReadWrite"
        create_option = "FromImage"
        managed_disk_type = "Premium_LRS"
}
storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "16.04.0-LTS"
        version   = "latest"
}

os_profile {
        computer_name = "myvm2"
        admin_username = "azure10"
        admin_password = "azure10"
}

os_profile_linux_config {
        disable_password_authentication = true
        ssh_keys {
                path = "/home/azure10/.ssh/authorized_keys"
                key_data = "${file("~/.ssh/id_rsa.pub")}"
        }
}

boot_diagnostics {
        enabled = "true"
        storage_uri = "${azurerm_storage_account.mystorageaccount2.primary_blob_endpoint}"
}

tags = {
        environment = "user10 Terraform Demo vm 2"
        }
}
