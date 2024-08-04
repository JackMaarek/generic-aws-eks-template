variable "vpc_name" {
  type        = string
  default     = "my-vpc"
  description = "The VPC name"
}

variable "cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "The VPC CIDR"
}

variable "public_subnets" {
  type        = list(string)
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  description = "The Public Subnets"
}

variable "private_subnets" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "The Private Subnets"
}

variable "enable_nat_gateway" {
  type        = bool
  default     = true
  description = "Provision NAT Gateways for each private networks"
}

variable "single_nat_gateway" {
  type        = bool
  default     = true
  description = "Provision a single shared NAT Gateway across all private networks"
}

variable "one_nat_gateway_per_az" {
  type        = bool
  default     = true
  description = "True if only one NAT Gateway per availability zone should be provisioned"
}

variable "public_subnet_tags" {
  type        = map(string)
  default     = {
    "kubernetes.io/role/elb" = 1
  }
  description = "Tags for the public subnets"
}

variable "private_subnet_tags" {
  type        = map(string)
  default     = {
    "kubernetes.io/role/internal-elb" = 1
  }
  description = "Tags for the private subnets"
}
