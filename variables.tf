variable "region" {
  description = "Azure region"
  default     = "westus2"
}

variable "rg_name" {
  description = "Resource Group name"
  default     = "tfOperatorRg"
}

variable "k8s_spn_client_id" {
  default     = "updatePerK8sCluster"
}

variable "k8s_spn_client_secret" {
  default     = "updatePerK8sCluster"
}


