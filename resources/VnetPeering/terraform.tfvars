PEER = {
  PEER11to21 = {
    name                      = "ram-peer11to21"
    resource_group_name       = "ram-rg-11"
    virtual_network_name      = "ram-vnet-11"
    remote_virtual_network_id = "/subscriptions/5b9f49a3-8bda-49fa-88c0-baf311ef21f4f3/resourceGroups/ram-rg-21/providers/Microsoft.Network/virtualNetworks/ram-vnet-21"
  }

  PEER21to11 = {
    name                      = "ram-peer21to11"
    resource_group_name       = "ram-rg-21"
    virtual_network_name      = "ram-vnet-21"
    remote_virtual_network_id = "/subscriptions/5b9f49a3-8bda-49fa-88c0-baf311ef21f4f3/resourceGroups/ram-rg-11/providers/Microsoft.Network/virtualNetworks/ram-vnet-11"
  }
}