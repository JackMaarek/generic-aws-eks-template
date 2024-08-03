output "vpc_arn" {
  value = aws_vpc.env_vpc.arn
}

output "vpc_id" {
  value = aws_vpc.env_vpc.id
}

output "eip_az_a_id" {
  value = aws_eip.env_public[0].id
}

output "eip_az_b_id" {
  value = aws_eip.env_public[1].id
}

output "internet_gateway_arn" {
  value = aws_internet_gateway.env_gateway.arn
}
output "internet_gateway_id" {
  value = aws_internet_gateway.env_gateway.id
}

output "nat_gateway_az_a_id" {
  value = aws_nat_gateway.env_public[0].id
}

output "nat_gateway_az_b_id" {
  value = aws_nat_gateway.env_public[1].id
}

output "nat_gateway_az_a_public_ip" {
  value = aws_nat_gateway.env_public[0].public_ip
}

output "nat_gateway_az_b_public_ip" {
  value = aws_nat_gateway.env_public[1].public_ip
}

output "route_table_private_az_a_id" {
  value = aws_route_table.env_private[0].id
}

output "route_table_private_az_b_id" {
  value = aws_route_table.env_private[1].id
}

output "route_table_public_id" {
  value = aws_route_table.env_public.id
}

output "subnet_private_az_a_arn" {
  value = aws_subnet.env_private[0].arn
}
output "subnet_private_az_a_id" {
  value = aws_subnet.env_private[0].id
}
output "subnet_private_az_a_cidr_block" {
  value = aws_subnet.env_private[0].cidr_block
}

output "subnet_private_az_b_arn" {
  value = aws_subnet.env_private[1].arn
}
output "subnet_private_az_b_id" {
  value = aws_subnet.env_private[1].id
}
output "subnet_private_az_b_cidr_block" {
  value = aws_subnet.env_private[1].cidr_block
}

output "subnet_public_az_a_arn" {
  value = aws_subnet.env_public[0].arn
}
output "subnet_public_az_a_id" {
  value = aws_subnet.env_public[0].id
}
output "subnet_public_az_a_cidr_block" {
  value = aws_subnet.env_public[0].cidr_block
}

output "subnet_public_az_b_arn" {
  value = aws_subnet.env_public[1].arn
}
output "subnet_public_az_b_id" {
  value = aws_subnet.env_public[1].id
}
output "subnet_public_az_b_cidr_block" {
  value = aws_subnet.env_public[1].cidr_block
}

output "private_subnets_ids" {
  description = "IDs of the private subnets"
  value       = tolist(aws_subnet.env_private.*.id)
}

output "public_subnets_ids" {
  description = "IDs of the public subnets"
  value       = tolist(aws_subnet.env_public.*.id)
}

output "private_subnets_cidrs" {
  description = "CIDRs of the private subnets"
  value       = tolist(aws_subnet.env_private.*.cidr_block)
}

output "public_subnets_cidrs" {
  description = "CIDRs of the public subnets"
  value       = tolist(aws_subnet.env_public.*.cidr_block)
}

output "nat_gateway_public_ips" {
  description = "Public IPs of the nat gateway"
  value       = tolist(aws_nat_gateway.env_public.*.public_ip)
}
