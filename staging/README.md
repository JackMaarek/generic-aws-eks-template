# TF code base## Introduction
This module aims to deploy the eks cluster with its roles and 

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->

## Contributors
<!-- BEGIN_TF_DOCS -->
# Terraform Documentation

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |


## Modules

No modules.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
| <a name="output_kubeconfig-certificate-authority-data"></a> [kubeconfig-certificate-authority-data](#output\_kubeconfig-certificate-authority-data) | n/a |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The cluster name | `string` | `"main-cluster"` | no |
| <a name="input_network"></a> [network](#input\_network) | The network module | <pre>object({<br>    vpc_id              = string,<br>    public_subnets_ids  = list(string),<br>    private_subnets_ids = optional(list(string)),<br>  })</pre> | n/a | yes |
| <a name="input_public_access_cidrs"></a> [public\_access\_cidrs](#input\_public\_access\_cidrs) | List of CIDR blocks which can access the Amazon EKS public API server endpoint. | `list(string)` | n/a | yes |
| <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags) | Tags of the resource | `map(string)` | <pre>{<br>  "Terraform": "True"<br>}</pre> | no |

## Resources

| Type | Name | Position |
|:-----|:-----|:-----|
 | resource | aws_eks_cluster.this| [modules/aws-eks/main.tf](../../../modules/aws-eks/main.tf#1) |
 | resource | aws_iam_role.cluster_role| [modules/aws-eks/iam.tf](../../../modules/aws-eks/iam.tf#14) |
 | resource | aws_iam_role_policy_attachment.AmazonEKSClusterPolicy| [modules/aws-eks/iam.tf](../../../modules/aws-eks/iam.tf#19) |
 | resource | aws_iam_role_policy_attachment.AmazonEKSVPCResourceController| [modules/aws-eks/iam.tf](../../../modules/aws-eks/iam.tf#26) |
 | resource | aws_security_group.this| [modules/aws-eks/main.tf](../../../modules/aws-eks/main.tf#21) |
 | data source | aws_iam_policy_document.assume_role| [modules/aws-eks/iam.tf](../../../modules/aws-eks/iam.tf#1) |
<!-- END_TF_DOCS -->