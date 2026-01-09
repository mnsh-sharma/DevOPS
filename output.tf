output "resource_group_id" {
  value       = azurerm_resource_group.rg.id
  description = "The ID of the created resource group"
}

output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  description = "The name of the created resource group"
}

output "kubernetes_cluster_id" {
  value       = azurerm_kubernetes_cluster.aks.id
  description = "The ID of the AKS cluster"
}

output "kubernetes_cluster_name" {
  value       = azurerm_kubernetes_cluster.aks.name
  description = "The name of the AKS cluster"
}

output "kube_config" {
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  description = "Kubernetes cluster config"
  sensitive   = true
}

output "client_certificate" {
  value       = azurerm_kubernetes_cluster.aks.kube_config[0].client_certificate
  description = "Client certificate for authentication"
  sensitive   = true
}

output "client_key" {
  value       = azurerm_kubernetes_cluster.aks.kube_config[0].client_key
  description = "Client key for authentication"
  sensitive   = true
}

output "cluster_ca_certificate" {
  value       = azurerm_kubernetes_cluster.aks.kube_config[0].cluster_ca_certificate
  description = "Cluster CA certificate"
  sensitive   = true
}

output "host" {
  value       = azurerm_kubernetes_cluster.aks.kube_config[0].host
  description = "Kubernetes host endpoint"
  sensitive   = true
}