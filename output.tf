### GENERIC
output "subscription_name" {
  description = "The display name of this subscription"
  value       = module.naming-root.subscription_name
}

output "subscription_id" {
  description = "The id of this subscription"
  value       = module.naming-root.subscription_id
}

output "tenant_id" {
  description = "The tenant id of this subscription"
  value       = module.naming-root.tenant_id
}

output "location" {
  description = "The location name"
  value       = var.location
}

output "location_abbreviation" {
  description = "The location abbreviation"
  value       = module.naming-root.location_abbreviation
}

output "environment" {
  description = "The environment name"
  value       = var.environment
}

### MODULE-SPECIFIC
output "vnet_names" {
  value = local.vnet_names
}

output "resource_group_names" {
  value = local.resource_group_names
}

output "subnet_names" {
  value = local.subnet_names
}

output "nsg_names" {
  value = local.nsg_names
}

output "ddos_protection_plan_names" {
  value = local.ddos_protection_plan_names
}

output "tags_hub_generic" {
  value = local.tags_hub_generic
}

output "tags_subenv" {
  value = local.tags_subenv
}

output "azure_firewall_names" {
  value = local.azure_firewall_names
}
