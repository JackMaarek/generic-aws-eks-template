/*resource "aws_security_group" "admin" {
  name        = "Admin"
  description = "Admin"
  vpc_id      = aws_vpc.env_vpc.id
  tags = {
    Name = "Admin"
  }
}

resource "aws_security_group_rule" "admin_http_self_ingress" {
  security_group_id = aws_security_group.admin.id
  description       = "Allow HTTP from self"
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "TCP"
  self              = true
}

resource "aws_security_group_rule" "admin_https_self_ingress" {
  security_group_id = aws_security_group.admin.id

  description = "Allow HTTPS from self"
  type        = "ingress"
  from_port   = 443
  to_port     = 443
  protocol    = "TCP"
  self        = true
}

resource "aws_security_group_rule" "admin_ssh_self_ingress" {
  security_group_id = aws_security_group.admin.id

  description = "Allow SSH from self"
  type        = "ingress"
  from_port   = 22
  to_port     = 22
  protocol    = "TCP"
  self        = true
}

##### Ecosystem Security group #####
# The Ecosystem security group has the following rules
# - Egress 3128 to
resource "aws_security_group" "ecosystem" {

  name        = "Ecosystem"
  description = "Ecosystem"
  vpc_id      = aws_vpc.env_vpc.id
  tags = {
    Name = "Ecosystem"
  }
}

resource "aws_security_group_rule" "ecosystem_squid_egress" {
  security_group_id = aws_security_group.ecosystem.id

  description = "Allow Squid from anywhere"
  type        = "egress"
  from_port   = 3128
  to_port     = 3128
  protocol    = "TCP"
  cidr_blocks = ["0.0.0.0/0"]
}*/
