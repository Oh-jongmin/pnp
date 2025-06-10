module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.31"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  cluster_endpoint_public_access           = true
  enable_cluster_creator_admin_permissions = true

  vpc_id     = aws_vpc.pnp.id
  subnet_ids = [aws_subnet.private-ng[0].id, aws_subnet.private-ng[1].id]

  eks_managed_node_groups = {
    ng-a = {
      name           = "ng-a"
      instance_types = ["t3.small"]
      desired_size   = 1
      min_size       = 1
      max_size       = 2
      subnet_ids     = [aws_subnet.private-ng[0].id]
    }

    ng-c = {
      name           = "ng-c"
      instance_types = ["t3.small"]
      desired_size   = 1
      min_size       = 1
      max_size       = 2
      subnet_ids     = [aws_subnet.private-ng[1].id]
    }
  }

  tags = {
    Environment = "dev"
    Terrform    = "true"
  }
}
