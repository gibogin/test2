resource "azurerm_resource_group" "user10-rg" {
    name = "user10-rg"
    location = "Koreasouth"
	tags = {
		environment = "user10 Terraform Demo"
	}
}
