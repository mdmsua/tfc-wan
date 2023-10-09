terraform {
  cloud {
    organization = "Mangocado"
    workspaces {
      tags = ["development", "staging", "production"]
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }
}
