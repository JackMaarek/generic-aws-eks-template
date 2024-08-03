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
| <a name="output_eip_az_a_id"></a> [eip\_az\_a\_id](#output\_eip\_az\_a\_id) | n/a |
| <a name="output_eip_az_b_id"></a> [eip\_az\_b\_id](#output\_eip\_az\_b\_id) | n/a |
| <a name="output_internet_gateway_arn"></a> [internet\_gateway\_arn](#output\_internet\_gateway\_arn) | n/a |
| <a name="output_internet_gateway_id"></a> [internet\_gateway\_id](#output\_internet\_gateway\_id) | n/a |
| <a name="output_nat_gateway_az_a_id"></a> [nat\_gateway\_az\_a\_id](#output\_nat\_gateway\_az\_a\_id) | n/a |
| <a name="output_nat_gateway_az_a_public_ip"></a> [nat\_gateway\_az\_a\_public\_ip](#output\_nat\_gateway\_az\_a\_public\_ip) | n/a |
| <a name="output_nat_gateway_az_b_id"></a> [nat\_gateway\_az\_b\_id](#output\_nat\_gateway\_az\_b\_id) | n/a |
| <a name="output_nat_gateway_az_b_public_ip"></a> [nat\_gateway\_az\_b\_public\_ip](#output\_nat\_gateway\_az\_b\_public\_ip) | n/a |
| <a name="output_nat_gateway_public_ips"></a> [nat\_gateway\_public\_ips](#output\_nat\_gateway\_public\_ips) | Public IPs of the nat gateway |
| <a name="output_private_subnets_cidrs"></a> [private\_subnets\_cidrs](#output\_private\_subnets\_cidrs) | CIDRs of the private subnets |
| <a name="output_private_subnets_ids"></a> [private\_subnets\_ids](#output\_private\_subnets\_ids) | IDs of the private subnets |
| <a name="output_public_subnets_cidrs"></a> [public\_subnets\_cidrs](#output\_public\_subnets\_cidrs) | CIDRs of the public subnets |
| <a name="output_public_subnets_ids"></a> [public\_subnets\_ids](#output\_public\_subnets\_ids) | IDs of the public subnets |
| <a name="output_route_table_private_az_a_id"></a> [route\_table\_private\_az\_a\_id](#output\_route\_table\_private\_az\_a\_id) | n/a |
| <a name="output_route_table_private_az_b_id"></a> [route\_table\_private\_az\_b\_id](#output\_route\_table\_private\_az\_b\_id) | n/a |
| <a name="output_route_table_public_id"></a> [route\_table\_public\_id](#output\_route\_table\_public\_id) | n/a |
| <a name="output_subnet_private_az_a_arn"></a> [subnet\_private\_az\_a\_arn](#output\_subnet\_private\_az\_a\_arn) | n/a |
| <a name="output_subnet_private_az_a_cidr_block"></a> [subnet\_private\_az\_a\_cidr\_block](#output\_subnet\_private\_az\_a\_cidr\_block) | n/a |
| <a name="output_subnet_private_az_a_id"></a> [subnet\_private\_az\_a\_id](#output\_subnet\_private\_az\_a\_id) | n/a |
| <a name="output_subnet_private_az_b_arn"></a> [subnet\_private\_az\_b\_arn](#output\_subnet\_private\_az\_b\_arn) | n/a |
| <a name="output_subnet_private_az_b_cidr_block"></a> [subnet\_private\_az\_b\_cidr\_block](#output\_subnet\_private\_az\_b\_cidr\_block) | n/a |
| <a name="output_subnet_private_az_b_id"></a> [subnet\_private\_az\_b\_id](#output\_subnet\_private\_az\_b\_id) | n/a |
| <a name="output_subnet_public_az_a_arn"></a> [subnet\_public\_az\_a\_arn](#output\_subnet\_public\_az\_a\_arn) | n/a |
| <a name="output_subnet_public_az_a_cidr_block"></a> [subnet\_public\_az\_a\_cidr\_block](#output\_subnet\_public\_az\_a\_cidr\_block) | n/a |
| <a name="output_subnet_public_az_a_id"></a> [subnet\_public\_az\_a\_id](#output\_subnet\_public\_az\_a\_id) | n/a |
| <a name="output_subnet_public_az_b_arn"></a> [subnet\_public\_az\_b\_arn](#output\_subnet\_public\_az\_b\_arn) | n/a |
| <a name="output_subnet_public_az_b_cidr_block"></a> [subnet\_public\_az\_b\_cidr\_block](#output\_subnet\_public\_az\_b\_cidr\_block) | n/a |
| <a name="output_subnet_public_az_b_id"></a> [subnet\_public\_az\_b\_id](#output\_subnet\_public\_az\_b\_id) | n/a |
| <a name="output_vpc_arn"></a> [vpc\_arn](#output\_vpc\_arn) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_account"></a> [aws\_account](#input\_aws\_account) | The main aws account used to populate the ressources | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The region in which the resources should be deployed | `string` | `"eu-west-1"` | no |
| <a name="input_aws_region_az"></a> [aws\_region\_az](#input\_aws\_region\_az) | AWS region and availability zone | `list(string)` | <pre>[<br>  "a",<br>  "b"<br>]</pre> | no |
| <a name="input_env_type"></a> [env\_type](#input\_env\_type) | -- Project ----------------------------------------------------------------------- | `string` | `"app"` | no |
| <a name="input_my_workspace"></a> [my\_workspace](#input\_my\_workspace) | terraform.workspace Replacement | `string` | `"staging"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project | `string` | n/a | yes |
| <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags) | Tags applied to all resources | `map(string)` | <pre>{<br>  "Terraform": "True"<br>}</pre> | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_vpc_subnet_size"></a> [vpc\_subnet\_size](#input\_vpc\_subnet\_size) | n/a | `string` | `"4"` | no |

## Resources

| Type | Name | Position |
|:-----|:-----|:-----|
 | resource | aws_eip.env_public| [modules/aws-vpc/main.tf](../../../modules/aws-vpc/main.tf#47) |
 | resource | aws_internet_gateway.env_gateway| [modules/aws-vpc/main.tf](../../../modules/aws-vpc/main.tf#129) |
 | resource | aws_nat_gateway.env_public| [modules/aws-vpc/main.tf](../../../modules/aws-vpc/main.tf#61) |
 | resource | aws_route_table.env_private| [modules/aws-vpc/main.tf](../../../modules/aws-vpc/main.tf#95) |
 | resource | aws_route_table.env_public| [modules/aws-vpc/main.tf](../../../modules/aws-vpc/main.tf#77) |
 | resource | aws_route_table_association.env_private| [modules/aws-vpc/main.tf](../../../modules/aws-vpc/main.tf#121) |
 | resource | aws_route_table_association.env_public| [modules/aws-vpc/main.tf](../../../modules/aws-vpc/main.tf#115) |
 | resource | aws_subnet.env_private| [modules/aws-vpc/main.tf](../../../modules/aws-vpc/main.tf#30) |
 | resource | aws_subnet.env_public| [modules/aws-vpc/main.tf](../../../modules/aws-vpc/main.tf#13) |
 | resource | aws_vpc.env_vpc| [modules/aws-vpc/main.tf](../../../modules/aws-vpc/main.tf#2) |
<!-- END_TF_DOCS -->
