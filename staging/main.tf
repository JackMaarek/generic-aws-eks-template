resource "random_string" "suffix" {
  length  = 8
  special = false
}

/*
module "eks" {
  source              = "../modules/aws-eks"

  cluster_name        = "test"
  public_access_cidrs = ["10.0.0.0/16"]
  resource_tags = {
    "Terraform" : true,
    "Env" : local.env
  }

  network = {
    vpc_id = "",
    private_subnets_ids = module.vpc.private_subnets_ids,
    public_subnets_ids  = module.vpc.public_subnets_ids
  }
}
*/

/*
module "vpc" {
  source       = "../modules/aws-vpc"

  aws_account  = "901550672375"
  project_name = "Test"
  vpc_cidr     = "10.0.0.0/16"

  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

  resource_tags = {
    "Terraform" : true,
    "Env" : local.env
  }
}*/