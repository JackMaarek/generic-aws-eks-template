variable "vpc_module" {
  type        = any
  description = "The VPC module passed values"
}

variable "cluster_name" {
  type        = string
  default     = "educational-cluster"
  description = "Name of the EKS cluster"
}

variable "cluster_version" {
  type        = string
  default     = "1.29"
  description = "Version to use for the EKS clustee"
}

variable "cluster_endpoint_public_access" {
  type        = bool
  default     = true
  description = "Whether Amazon EKS public API server endpoint should be enabled"
}

variable "enable_cluster_creator_admin_permissions" {
  type        = bool
  default     = true
  description = "whether or not to add the cluster creator (the identity used by Terraform) as an administrator via access entry"
}

variable "eks_managed_node_group_default_ami_types" {
  type        = string
  default     = "AL2_x86_64"
  description = "The AMI types used by the node group"
}

variable "node_groups" {
  type = map(object({
    name           = string
    instance_types = list(string)
    capacity_type  = optional(string)
    min_size       = number
    max_size       = number
    desired_size   = number
  }))
  description = "Map struct representing a node group parameter"
}

/*variable "node_group_config" {
  type = object({
    name           = string
    instance_types = list(string)
    capacity_type  = string
    min_size       = number
    max_size       = number
    desired_size   = number
  })
}*/

variable "env" {
  type        = string
  default     = "staging"
  description = "The project environment"
}
