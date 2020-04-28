locals {
  #inputs
  organisation = var.organisation
  location     = var.location
  environment  = var.environment

  resource_group_names = {
    main            = format("%s%s", module.naming-root.resource_basenames["resource_group"], "HUB001")
    gateway         = format("%s%s", module.naming-root.resource_basenames["resource_group"], "GTW001")
    shared_services = format("%s%s", module.naming-root.resource_basenames["resource_group"], "SSE001")
    dmz             = format("%s%s", module.naming-root.resource_basenames["resource_group"], "DMZ001")
    firewall        = format("%s%s", module.naming-root.resource_basenames["resource_group"], "AFW001")

  }

  vnet_names = {
    main = format("%s%s", module.naming-root.resource_basenames["virtual_network"], "HUB001")
  }

  ddos_protection_plan_names = {
    main = format("%s%s", module.naming-root.resource_basenames["ddos_protection_plan"], "HUB001")
  }

  subnet_names = {
    gateway         = format("%s%s", local.vnet_names["main"], "GTWSUB001")
    shared_services = format("%s%s", local.vnet_names["main"], "SSESUB001")
    dmz             = format("%s%s", local.vnet_names["main"], "DMZSUB001")
    firewall        = "AzureFirewallSubnet"
  }

  nsg_names = {
    gateway         = format("%s%s", local.subnet_names["gateway"], "NSG001")
    shared_services = format("%s%s", local.subnet_names["shared_services"], "NSG001")
    dmz             = format("%s%s", local.subnet_names["dmz"], "NSG001")
  }

  azure_firewall_names = {
    dmz = format("%s%s", module.naming-root.resource_basenames["azure_firewall"], "DMZ001")

  }
}
