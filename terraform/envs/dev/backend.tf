terraform {
  backend "s3" {
    backend = "tfstate-as-voting-app-dev"
    key = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "tf-locks-voting-devops"
  }
}