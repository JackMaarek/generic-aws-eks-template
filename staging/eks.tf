module "eks" {
  source = "../modules/aws-eks-1.1.0"

  vpc_module = module.vpc

  cluster_name = local.cluster_name

  node_groups = {
    one = {
      name = "node-group-1"

      instance_types = ["t3.small"]
      capacity_type  = "SPOT"

      min_size     = 1
      max_size     = 3
      desired_size = 3
    }

    two = {
      name = "node-group-2"

      instance_types = ["t3.small"]

      min_size     = 1
      max_size     = 2
      desired_size = 2
    }
  }
}