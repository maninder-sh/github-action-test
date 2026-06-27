terraform {
  backend "azurerm" {
     resource_group_name = "rg-test-mn" 
      storage_account_name = "rgtestmn"
      container_name = "staty"
      key = "practice.tfstate"

  }
  required_providers {
    azurerm ={
        source = "Hashicorp/azurerm"
        version = "4.73.0"
    }
  }
}

provider "azurerm" {
    features {}
  
  
}


resource "azurerm_resource_group" "RG1" {
    name     = "rg-gh-test"
    location = "East US"
  
}


