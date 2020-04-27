locals {
  #inputs
  organisation = var.organisation
  location     = var.location
  environment  = var.environment

  vnet_names = {
    main = format("%s%s", module.naming-root.resource_names["virtual_network"], "HUB001")
  }
}
