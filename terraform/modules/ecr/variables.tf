variable "repositories"{
  description = "List of ECR repositories to create"
  type        = list(string)
  default     = []
}

variable "keep_last_images"{
  description = "Number of last images to keep in each repository"
  type        = number
  default     = 30
}

variable "tags"{
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}