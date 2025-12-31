output "ecr_repositories_urls" {
  value = module.ecr.repository_urls
}
output "eks_name" {
  value = module.eks.cluster_name
}