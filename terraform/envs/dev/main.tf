provider "aws" {
  region = var.aws_region
}

locals {
  tags = {
    Project = var.project
    Env     = "dev"
  }
}

module "ecr" {
  source = "../../modules/ecr"
  tags   = local.tags
  repositories = ["voting-app", "results-app", "worker-app"]
  keep_last_images = 30
}

module "vpc" {
  source = "../../modules/vpc"
  name = "${var.project}-vpc"
  cidr = "10.0.0.0/16"
  azs = ["us-east-1a", "us-east-1b" ]
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24"]
  tags = local.tags
}