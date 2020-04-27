locals {
  #inputs
  organisation = var.organisation
  location     = var.location
  environment  = var.environment

  resource_group_names = {
    main = format("%s%s", module.naming-root.resource_basenames["resource_group"], "HUB001")
  }

  vnet_names = {
    main = format("%s%s", module.naming-root.resource_basenames["virtual_network"], "HUB001")
  }

  subnet_names = {
    gateway         = format("%s%s", local.vnet_names["main"], "GTW001")
    shared_services = format("%s%s", local.vnet_names["main"], "SSE001")
    dmz             = format("%s%s", local.vnet_names["main"], "DMZ001")
  }
}
