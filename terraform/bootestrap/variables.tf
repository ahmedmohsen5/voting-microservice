variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "tf_state_bucket_name" {
  type        = string
  description = "Must be globally unique (S3 bucket name)."
}

variable "tf_lock_table_name" {
  type    = string
  default = "tf-locks-voting-devops"
}
