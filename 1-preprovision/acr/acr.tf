resource "azurerm_container_registry" "acr" {
  name                     = "magicaksregistry"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  sku                      = "Premium"
  admin_enabled            = true

  network_rule_set {
      virtual_network {
          action = "Allow"
          subnet_id = var.subnet_id
      }
  }
}