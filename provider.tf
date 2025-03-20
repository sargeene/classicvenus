terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # Updated to latest stable version
    }
  }
  backend "azurerm" {
    venusstorageaccount = "venusstorageaccount"
    container = "venusstate"
    key = "venus.tfstate"
  }
}

provider "azurerm" {
  # Remove the hardcoded subscription_id and use az login instead
  features {}
}
  
