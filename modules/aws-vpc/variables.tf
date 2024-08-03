#-- Project -----------------------------------------------------------------------
variable "env_type" {
  type    = string
  default = "app"
}

variable "aws_account" {
  type        = string
  validation {
    condition     = can(length(var.aws_account) == 12)
    error_message = "The AWS account must be a 12-digit number!"
  }
  description = "The main aws account used to populate the ressources"
}

variable "my_workspace" {
  type        = string
  default     = "staging"
  description = "terraform.workspace Replacement"
}

#-- Networking ---------------------------------------------------------------

variable "vpc_cidr" {
  type        = string
  description = "CIDR to associate with the VPC to extend the IP Address pool"
}

variable "vpc_subnet_size" {
  type        = string
  default     = "4" # 20+4 => /24 subnet
  description = "The size of the additional bits which extends the cidr prefix"
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "azs" {
  description = "A list of availability zones names or ids in the region"
  type        = list(string)
  default     = []
}

#-- AWS specific vars --------------------------------------------------------
variable "project_name" {
  type    = string
  description = "Name of the project"
}

variable "aws_region" {
  type        = string
  default     = "eu-west-1"
  description = "The region in which the resources should be deployed"
}

variable "aws_region_az" {
  type        = list(string)
  default     = ["a", "b"]
  description = "AWS region and availability zone"
}

variable "resource_tags" {
  type        = map(string)
  default     = {
    "Terraform" = "True"
  }
  description = "Tags applied to all resources"
}