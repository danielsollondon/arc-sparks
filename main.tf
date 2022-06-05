# Configure the Azure provider

provider "azurerm" {
  features {}
}

resource "random_pet" "prefix" {}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.region 

}

resource "azurerm_kubernetes_cluster" "default" {
  name                = "${random_pet.prefix.id}-aks"
  location            = var.region
  resource_group_name = var.rg_name
  dns_prefix          = "${random_pet.prefix.id}-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.k8s_spn_client_id
    client_secret = var.k8s_spn_client_secret
  }

  role_based_access_control_enabled = true

  tags = {
    environment = "Demo"
  }
}
