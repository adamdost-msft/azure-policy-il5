terraform {
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "> 2.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}

module "conatiner_registry" {
  source = "./modules/ContainerRegistry"
  enable_policy = var.acr_policy.enable_policy
  policy_effect = var.acr_policy.policy_effect
}

module "storage" {
  source = "./modules/Storage"
  enable_policy = var.stg_policy.enable_policy
  policy_effect = var.stg_policy.policy_effect
}
