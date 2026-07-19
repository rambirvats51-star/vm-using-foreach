BASTIONS = {

  bastion11 = {
    bastion_name        = "bastion-centralindia"
    location            = "centralindia"
    resource_group_name = "ram-rg-11"

    public_ip_name      = "pip-bastion-cin"

    subnet_id           = "/subscriptions/5b9f49a3-8bda-49fa-88c0-baf311ef21f4f3/resourceGroups/ram-rg-11/providers/Microsoft.Network/virtualNetworks/ram-vnet-11/subnets/AzureBastionSubnet"
    ip_config_name      = "configuration"
  }

}