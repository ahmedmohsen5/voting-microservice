terraform {
  backend "s3" {
    bucket = "tfstate-as-voting-devops-001"
    key = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "tf-locks-voting-devops"
  }
}