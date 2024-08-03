variable "cluster_name" {
  default     = "main-cluster"
  type        = string
  description = "The cluster name"
}

variable "network" {
  type        = object({
    vpc_id              = string,
    public_subnets_ids  = list(string),
    private_subnets_ids = optional(list(string)),
  })
  description = "The network module"
}

variable "resource_tags" {
  type = map(string)
  default     = {
    "Terraform" = "True"
  }
  description = "Tags of the resource"
}

variable "public_access_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint."
}
