module "rg" {
  source = "../../resources/ResourceGroup"
  RG = var.RGS
}

module "vnet" {
    depends_on = [ module.rg ]
  source = "../../resources/VirtualNetwork"
  VNET = var.VNETS
}

module "SUBNET" {
    depends_on = [ module.vnet ]
 source = "../../resources/SubNet"
  SNET = var.SNETS
}

module "pip"{
  depends_on = [ module.rg ]
source = "../../resources/public_ip"
pip=var.pips

}
module "vm" {
  depends_on = [ module.pip ,module.SUBNET]
  source = "../../resources/VirtualMachine"
  vm=var.VMS
  
}
  


  
