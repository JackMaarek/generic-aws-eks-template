locals {
  project_name = "own"
  env          = "staging"
  cluster_name = "education-eks-${random_string.suffix.result}"
}