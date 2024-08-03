resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  role_arn = aws_iam_role.cluster_role.arn

  vpc_config {
    subnet_ids = [
      element(var.network.public_subnets_ids, 0),
      element(var.network.public_subnets_ids, 1)
    ]
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.AmazonEKSVPCResourceController,
  ]
}

#-- Cluster Security groups --------------------------------------------------
resource "aws_security_group" "this" {
  name        = "${var.cluster_name}-cluster-sg"
  description = "Cluster communication"
  vpc_id      = var.network.vpc_id
  tags = merge(var.resource_tags, {
    cluster = var.cluster_name
  })

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.public_access_cidrs
  }

}
