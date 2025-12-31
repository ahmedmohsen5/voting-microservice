module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.5.1"
  name = var.name
  cidr = var.cidr
  azs = var.azs
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets

  enable_nat_gateway = true
  single_nat_gateway = true
  enable_dns_hostnames = true

  public_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
  }
  tags = var.tags
}
