# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"

  backend "azurerm" {

    resource_group_name  = "terraform-backend"
    storage_account_name = "terraformbackend2023"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
        
  }
}

provider "azurerm" {
  features {}
}



resource "azurerm_resource_group" "rg" {
  name     = "Fitnessgeek-rg"
  location = var.location-rg
  tags = {
    "Application" = "DemoApp"
  }
}


