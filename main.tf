terraform {
  required_providers {
    azurerm = {
        sourec = "hashicorp/azurerm"
        version = "2.97.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm"{
    features {}
}

#Creating a resource group 
resource "azurerm_resource_group" "tf_test"{
    name = "terramainrg"
    location = "West Europe"
}

#commands in terraform 
#init(initialize terraform) plan apply destroy

resource "azurerm_container_group" "tfcong_test"{
    name                = "weatherapi"
    location            = azurerm_resource_group.tf_test.location
    resource_group_name = azurerm_resource_group.tf_test.name
}

#what i was doing is, here code all the fields of azurerm_container_group and then test the weatherapi 
#image is getting deployed or not!!!