terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
subscription_id = "ee5b8ad9-539c-4376-89b9-dedc828b836f"
client_id = "9b191895-038a-4b13-abb6-0577c9806669"
client_secret = "0Gi8Q~DNwCC6vJR6NsJVI9QuR49TvPu4Z-_5pc.q"
tenant_id = "f4fe2569-782a-4a24-82b3-7d118fa395c5"
features {
  
}
}



resource "azurerm_virtual_network" "vnet" {
  name                = "vnet1"
  location            = "West Europe"
  resource_group_name = "RG_DEMO"
  address_space       = ["10.0.0.0/16"]

  subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet {
    name             = "subnet2"
    address_prefixes = ["10.0.2.0/24"]
    
  }


  tags = {
    environment = "uat"
  }
}