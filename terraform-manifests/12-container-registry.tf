resource "azurerm_resource_group" "aks_acr" {
  name     = azurerm_resource_group.aks_rg.name
  location = azurerm_resource_group.aks_rg.location
}

resource "azurerm_container_registry" "acr" {
  name                = "${azurerm_resource_group.aks_rg.name}-registry"
  resource_group_name = azurerm_resource_group.aks_rg.name
  location 	          = azurerm_resource_group.aks_rg.location
  sku                 = "Standard"
  admin_enabled       = true
}
