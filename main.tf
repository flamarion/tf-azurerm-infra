terraform {
  required_version = "~> 0.14"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.43"
    }
  }
  backend "remote" {
    organization = "FlamaCorp"

    workspaces {
      name = "tf-azure-infra"
    }
  }
}

provider "azurerm" {
  features {}
}
