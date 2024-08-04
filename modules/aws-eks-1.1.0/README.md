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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_allow_assume_eks_admins_iam_policy"></a> [allow\_assume\_eks\_admins\_iam\_policy](#module\_allow\_assume\_eks\_admins\_iam\_policy) | terraform-aws-modules/iam/aws//modules/iam-policy | 5.3.1 |
| <a name="module_allow_eks_access_iam_policy"></a> [allow\_eks\_access\_iam\_policy](#module\_allow\_eks\_access\_iam\_policy) | terraform-aws-modules/iam/aws//modules/iam-policy | 5.3.1 |
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | 20.8.5 |
| <a name="module_eks_admins_iam_group"></a> [eks\_admins\_iam\_group](#module\_eks\_admins\_iam\_group) | terraform-aws-modules/iam/aws//modules/iam-group-with-policies | 5.3.1 |
| <a name="module_eks_admins_iam_role"></a> [eks\_admins\_iam\_role](#module\_eks\_admins\_iam\_role) | terraform-aws-modules/iam/aws//modules/iam-assumable-role | 5.3.1 |
| <a name="module_irsa-ebs-csi"></a> [irsa-ebs-csi](#module\_irsa-ebs-csi) | terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc | 5.39.0 |
| <a name="module_jack_iam_user"></a> [jack\_iam\_user](#module\_jack\_iam\_user) | terraform-aws-modules/iam/aws//modules/iam-user | 5.3.1 |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_outputs"></a> [eks\_outputs](#output\_eks\_outputs) | !Generic for now |
| <a name="output_local_managed_nodes"></a> [local\_managed\_nodes](#output\_local\_managed\_nodes) | n/a |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_endpoint_public_access"></a> [cluster\_endpoint\_public\_access](#input\_cluster\_endpoint\_public\_access) | Whether Amazon EKS public API server endpoint should be enabled | `bool` | `true` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the EKS cluster | `string` | `"educational-cluster"` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | Version to use for the EKS clustee | `string` | `"1.29"` | no |
| <a name="input_eks_managed_node_group_default_ami_types"></a> [eks\_managed\_node\_group\_default\_ami\_types](#input\_eks\_managed\_node\_group\_default\_ami\_types) | The AMI types used by the node group | `string` | `"AL2_x86_64"` | no |
| <a name="input_enable_cluster_creator_admin_permissions"></a> [enable\_cluster\_creator\_admin\_permissions](#input\_enable\_cluster\_creator\_admin\_permissions) | whether or not to add the cluster creator (the identity used by Terraform) as an administrator via access entry | `bool` | `true` | no |
| <a name="input_env"></a> [env](#input\_env) | The project environment | `string` | `"staging"` | no |
| <a name="input_node_groups"></a> [node\_groups](#input\_node\_groups) | Map struct representing a node group parameter | <pre>map(object({<br>    name           = string<br>    instance_types = list(string)<br>    capacity_type  = optional(string)<br>    min_size       = number<br>    max_size       = number<br>    desired_size   = number<br>  }))</pre> | n/a | yes |
| <a name="input_vpc_module"></a> [vpc\_module](#input\_vpc\_module) | The VPC module passed values | `any` | n/a | yes |

## Resources

| Type | Name | Position |
|:-----|:-----|:-----|
 | data source | aws_iam_policy.ebs_csi_policy| [modules/aws-eks-1.1.0/iam.tf](../../../modules/aws-eks-1.1.0/iam.tf#3) |
<!-- END_TF_DOCS -->