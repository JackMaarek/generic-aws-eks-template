#-- VPC ----------------------------------------------------------------------
resource "aws_vpc" "env_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = "true"
  tags = merge(
    var.resource_tags,
    tomap({ Name = "ENV ${var.env_type}-${var.my_workspace}" }),
    tomap({ Environment = "${var.env_type}-${var.my_workspace}" })
  )
}

#-- Subnets ------------------------------------------------------------------
resource "aws_subnet" "env_public" {
  count  = length(var.aws_region_az)
  vpc_id = aws_vpc.env_vpc.id
  cidr_block = cidrsubnet(
    var.vpc_cidr,
    var.vpc_subnet_size,
    count.index
  )
  availability_zone       = "${var.aws_region}${var.aws_region_az[count.index]}"
  map_public_ip_on_launch = true
  tags = merge(
    var.resource_tags,
    tomap({ Name = "ENV ${var.env_type}-${var.my_workspace} Public (zone-${var.aws_region_az[count.index]})" }),
    tomap({ Environment = "${var.env_type}-${var.my_workspace}" })
  )
}

resource "aws_subnet" "env_private" {
  count  = length(var.aws_region_az)
  vpc_id = aws_vpc.env_vpc.id
  cidr_block = cidrsubnet(
    var.vpc_cidr,
    var.vpc_subnet_size,
    length(var.aws_region_az) + count.index
  )
  availability_zone = "${var.aws_region}${var.aws_region_az[count.index]}"
  tags = merge(
    var.resource_tags,
    tomap({ Name = "ENV ${var.env_type}-${var.my_workspace} Private (zone-${var.aws_region_az[count.index]})" }),
    tomap({ Environment = "${var.env_type}-${var.my_workspace}" })
  )
}

#-- NAT Gateway -------------------------------------------------------------
resource "aws_eip" "env_public" {
  count = length(var.aws_region_az)
  vpc   = true
  tags = merge(
    var.resource_tags,
    tomap({
      Name = "ENV ${var.env_type}-${var.my_workspace} gateway (zone-${var.aws_region_az[count.index]})"
    }),
    tomap({
      Environment = "${var.env_type}-${var.my_workspace}"
    })
  )
}

resource "aws_nat_gateway" "env_public" {
  count         = length(var.aws_region_az)
  subnet_id     = aws_subnet.env_public.*.id[count.index]
  allocation_id = aws_eip.env_public.*.id[count.index]
  tags = merge(
    var.resource_tags,
    tomap({
      Name = "ENV ${var.env_type}-${var.my_workspace} (zone-${var.aws_region_az[count.index]})"
    }),
    tomap({
      Environment = "${var.env_type}-${var.my_workspace}"
    })
  )
}

#-- Route tables -------------------------------------------------------------
resource "aws_route_table" "env_public" {
  vpc_id = aws_vpc.env_vpc.id
  tags = merge(
    var.resource_tags,
    tomap({
      Name = "ENV ${var.env_type}-${var.my_workspace} route (VPC public)"
    }),
    tomap({
      Environment = "${var.env_type}-${var.my_workspace}"
    }),
  )

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.env_gateway.id
  }
}

resource "aws_route_table" "env_private" {
  count  = length(var.aws_region_az)
  vpc_id = aws_vpc.env_vpc.id
  tags = merge(
    var.resource_tags,
    tomap({
      Name = "ENV ${var.env_type}-${var.my_workspace} route (zone-${var.aws_region_az[count.index]} private)"
    }),
    tomap({
      Environment = "${var.env_type}-${var.my_workspace}"
    }),
  )

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.env_public.*.id[count.index]
  }
}


resource "aws_route_table_association" "env_public" {
  count          = length(var.aws_region_az)
  subnet_id      = aws_subnet.env_public.*.id[count.index]
  route_table_id = aws_route_table.env_public.id
}

resource "aws_route_table_association" "env_private" {
  count          = length(var.aws_region_az)
  subnet_id      = aws_subnet.env_private.*.id[count.index]
  route_table_id = aws_route_table.env_private.*.id[count.index]
}


#-- Internet gateway ---------------------------------------------------------
resource "aws_internet_gateway" "env_gateway" {
  vpc_id = aws_vpc.env_vpc.id
  tags = merge(
    var.resource_tags,
    tomap({
      Name = "ENV ${var.env_type}-${var.my_workspace} gateway"
    }),
    tomap({
      Environment = "${var.env_type}-${var.my_workspace}"
    })
  )
}
