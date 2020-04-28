locals {
  ### TAGS
  tags_hub_generic = merge(module.naming-root.tags_base,
    {
      naming-module = "azure-naming-hub"
  })

  tags_subenv = {
    main = merge(local.tags_hub_generic, {
      sub_environment = "main"
    })
    gateway = merge(local.tags_hub_generic, {
      sub_environment = "gateway"
    })
    shared_services = merge(local.tags_hub_generic, {
      sub_environment = "shared_services"
    })
    dmz = merge(local.tags_hub_generic, {
      sub_environment = "dmz"
    })
    firewall = merge(local.tags_hub_generic, {
      sub_environment = "firewall"
    })

  }
}
