

data "azurerm_subnet" "subnet" {
   
    for_each = var.vm
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name 
  resource_group_name  = each.value. resource_group_name
}

data "azurerm_public_ip" "pip" {
  for_each = var.vm
  name                =each.value.pip_name
  resource_group_name = each.value. resource_group_name
}
  
data "azurerm_key_vault" "example" {
  name                = "Ramk11"
  resource_group_name = "rambir"
}
data "azurerm_key_vault_secret" "example1" {
  name         = "admin-username"
  key_vault_id = data.azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "example11" {
  name         = "admin-password"
  key_vault_id = data.azurerm_key_vault.example.id
}