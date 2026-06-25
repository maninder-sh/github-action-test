terraform {
  backend "azurerm" {
     resource_group_name = "rg-test-mani" 
      storage_account_name = "rgtestmanisg"
      container_name = "statecontainer"
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
    name     = "Githubactions2"
    location = "East US"
  
}

resource "azurerm_resource_group" "RG2" {
    name     = "Githubactions3"
    location = "East US"
  
}
