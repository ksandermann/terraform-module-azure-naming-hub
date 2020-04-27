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
