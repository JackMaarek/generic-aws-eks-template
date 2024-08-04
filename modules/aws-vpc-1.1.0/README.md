<!-- BEGIN_TF_DOCS -->
# Terraform Documentation

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |


## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | 5.8.1 |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_outputs"></a> [vpc\_outputs](#output\_vpc\_outputs) | !Generic for now |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr"></a> [cidr](#input\_cidr) | The VPC CIDR | `string` | `"10.0.0.0/16"` | no |
| <a name="input_enable_nat_gateway"></a> [enable\_nat\_gateway](#input\_enable\_nat\_gateway) | Provision NAT Gateways for each private networks | `bool` | `true` | no |
| <a name="input_one_nat_gateway_per_az"></a> [one\_nat\_gateway\_per\_az](#input\_one\_nat\_gateway\_per\_az) | True if only one NAT Gateway per availability zone should be provisioned | `bool` | `true` | no |
| <a name="input_private_subnet_tags"></a> [private\_subnet\_tags](#input\_private\_subnet\_tags) | Tags for the private subnets | `map(string)` | <pre>{<br>  "kubernetes.io/role/internal-elb": 1<br>}</pre> | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | The Private Subnets | `list(string)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24",<br>  "10.0.3.0/24"<br>]</pre> | no |
| <a name="input_public_subnet_tags"></a> [public\_subnet\_tags](#input\_public\_subnet\_tags) | Tags for the public subnets | `map(string)` | <pre>{<br>  "kubernetes.io/role/elb": 1<br>}</pre> | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | The Public Subnets | `list(string)` | <pre>[<br>  "10.0.4.0/24",<br>  "10.0.5.0/24",<br>  "10.0.6.0/24"<br>]</pre> | no |
| <a name="input_single_nat_gateway"></a> [single\_nat\_gateway](#input\_single\_nat\_gateway) | Provision a single shared NAT Gateway across all private networks | `bool` | `true` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The VPC name | `string` | `"my-vpc"` | no |

## Resources

| Type | Name | Position |
|:-----|:-----|:-----|
 | data source | aws_availability_zones.available| [modules/aws-vpc-1.1.0/main.tf](../../../modules/aws-vpc-1.1.0/main.tf#1) |
<!-- END_TF_DOCS -->
