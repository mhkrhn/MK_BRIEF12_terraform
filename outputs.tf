# Pour obtenir l'Ip privée de nos VM, il faut faire appel a la variable qui correspond à l'interface réseau,
# vu que nous avons 2 VMs, il faut donc spécifié les 2 interfaces resaux utilisé par les vms.
output "Ip_VM1" {
  value = azurerm_network_interface.test[0].private_ip_address
}

output "Ip_VM2" {
  value = azurerm_network_interface.test[1].private_ip_address
}

# On fait appel, à la ressource azurerm_public_ip pour obtenir l'IP publique du load balancer
output "IpPub_LoadBalancer" {
  value = azurerm_public_ip.test.ip_address
}

# On fait appel aux Data sources pour obtenir le nom et la location du groupe de ressource
output "Ressource_Group" {
  value = data.azurerm_resource_group.MK-TBRIEF.name
}

output "Region" {
  value = data.azurerm_resource_group.MK-TBRIEF.location
}
