locals {
  eks_managed_node_groups = {
    for name, node_group in var.node_groups : name => {
      name           = node_group.name
      instance_types = node_group.instance_types
      capacity_type  = node_group.capacity_type
      min_size       = node_group.min_size
      max_size       = node_group.max_size
      desired_size   = node_group.desired_size
    }
  }
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8.5"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version #1.29

  cluster_endpoint_public_access           = var.cluster_endpoint_public_access #true
  enable_cluster_creator_admin_permissions = var.enable_cluster_creator_admin_permissions #true

  cluster_addons = {
    aws-ebs-csi-driver = {
      service_account_role_arn = module.irsa-ebs-csi.iam_role_arn
    }
  }

  vpc_id     = var.vpc_module.vpc_outputs.vpc_id
  subnet_ids = var.vpc_module.vpc_outputs.private_subnets

  eks_managed_node_group_defaults = {
    ami_type = var.eks_managed_node_group_default_ami_types #"AL2_x86_64"
  }

  eks_managed_node_groups = local.eks_managed_node_groups

  tags = {
    env       = var.env
    Terraform = "true"
  }
}
