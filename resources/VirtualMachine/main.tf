resource "azurerm_network_interface" "nic" {

  for_each = var.vm

  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
     public_ip_address_id=data.azurerm_public_ip.pip[each.key].id
    private_ip_address_allocation = "Dynamic"

  }
}

resource "azurerm_virtual_machine" "vm" {

  for_each = var.vm

  name                = each.value.vm_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  network_interface_ids = [
    azurerm_network_interface.nic[each.key].id
  ]

  vm_size = each.value.vm_size

  # delete_os_disk_on_termination    = true
  # delete_data_disks_on_termination = truecls


  storage_image_reference {
    publisher = each.value.image.publisher
    offer     = each.value.image.offer
    sku       = each.value.image.sku
    version   = each.value.image.version
  }

  storage_os_disk {
    name              = each.value.os_disk_name
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
  computer_name  = each.value.os.computer_name
  admin_username = each.value.os.admin_username
  admin_password = each.value.os.admin_password
}

  os_profile_linux_config {
    disable_password_authentication = false
  }
}
