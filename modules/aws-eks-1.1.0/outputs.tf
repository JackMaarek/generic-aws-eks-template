# !Generic for now
output "eks_outputs" {
  value = module.eks
}

output "local_managed_nodes" {
  value = local.eks_managed_node_groups
}