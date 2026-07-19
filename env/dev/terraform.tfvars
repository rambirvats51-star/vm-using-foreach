RGS = {
    RG1 = {
        name = "ram-rg-11"
      location = "EAST US"
    }
   
}

VNETS = {
    VNET1 = {
        name = "ram-vnet-1"
       location = "EAST US"
        resource_group_name = "ram-rg-11"
        address_space = ["10.44.0.0/16"]

    }
   
}
SNETS = {
    SNET1 = {
        name = "subnet1"
        resource_group_name  = "ram-rg-11"
        virtual_network_name = "ram-vnet-1"
        address_prefixes     = ["10.44.44.0/24"]
    }
    SNET2 = {
        name = "subnet2"
        resource_group_name  = "ram-rg-11"
        virtual_network_name = "ram-vnet-1"
        address_prefixes     = ["10.44.45.0/24"]
    }
  
}

pips={
pip1={
    name= "frontend_vm_pip"
    location = "EAST US"
    resource_group_name = "ram-rg-11"
  allocation_method   = "Static"

}
pip2={
     name="backend-vm-pip"
location = "EAST US"
    resource_group_name = "ram-rg-11"
    allocation_method   = "Static"



}


}
VMS = {

  vm11 = {
    nic_name            = "nic-linux-vm1"
    subnet_name         ="subnet1"
    virtual_network_name ="ram-vnet-1"
    pip_name           = "frontend_vm_pip"
    location = "EAST US"
    resource_group_name = "ram-rg-11"
    vm_name      = "linux-vm-1"
   vm_size = "Standard_DC1s_v3"
    os_disk_name = "osdisk-vm11"
image = {
  publisher = "Canonical"
  offer     = "ubuntu-24_04-lts"
  sku        = "server"
  version    = "latest"
}

    os = {
      computer_name  = "hostname11"
      admin_username = "testadmin"
      admin_password = "Password112134!"
    }
  }

  vm21 = {
    nic_name            = "nic-linux-vm2"
    subnet_name         ="subnet2"
    virtual_network_name ="ram-vnet-1"
    pip_name           = "backend-vm-pip"
   location = "EAST US"
    resource_group_name = "ram-rg-11"

   
    vm_name      = "linux-vm-2"
   
    os_disk_name = "osdisk-vm21"

  image = {
  publisher = "Canonical"
  offer     = "ubuntu-24_04-lts"
  sku        = "server"
  version    = "latest"
}
    os = {
      computer_name  = "hostname21"
      admin_username = "testadmin"
      admin_password = "Password112134!"
    }
  }
}