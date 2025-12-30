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
  keep_last_images = local.tags
}