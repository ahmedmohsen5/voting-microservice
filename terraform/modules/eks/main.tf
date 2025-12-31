module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "20.24.1"
  cluster_name = var.cluster_name
  cluster_version = 1.29
  cluster_endpoint_public_access = true
  cluster_endpoint_private_access = true

  vpc_id = var.vpc_id
  subnet_ids = var.private_subnet_ids

  enable_irsa = true


  eks_managed_node_groups = {
    default = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_types = ["t3.micro"]

      disk_size = 20

      tags = {
        Name = "${var.cluster_name}-node-group"
      }
    }
  }
  
  tags = var.tags
}