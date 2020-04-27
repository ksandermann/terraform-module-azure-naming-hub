module "naming-root" {
  source          = "github.com/ksandermann/terraform-module-azure-naming-root?ref=init"
  subscription_id = var.subscription_id
  organisation    = var.organisation
  environment     = var.environment
  location        = var.location
}
