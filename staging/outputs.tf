output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.eks_outputs.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.eks_outputs.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.eks_outputs.cluster_security_group_id
}

output "managed_nodes" {
  value = module.eks.local_managed_nodes
}