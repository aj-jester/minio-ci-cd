output "hello_minio_aws_vpc_id" {
  description = "Hello World AWS VPC ID"
  value       = module.hello_minio_aws_vpc.minio_aws_vpc_id
}

output "hello_minio_aws_subnet_public_igw_map" {
  description = "Hello World AWS Subnet Public IGW ID"
  value       = module.hello_minio_aws_vpc.minio_aws_subnet_public_igw_map
}

output "hello_minio_aws_subnet_private_ngw_map" {
  description = "Hello World AWS Subnet Private NGW ID"
  value       = module.hello_minio_aws_vpc.minio_aws_subnet_private_ngw_map
}

output "hello_minio_aws_subnet_private_isolated_map" {
  description = "Hello World AWS Subnet Private isolated ID"
  value       = module.hello_minio_aws_vpc.minio_aws_subnet_private_isolated_map
}

output "hello_minio_aws_eks_cluster_endpoint" {
  description = "Hello World AWS EKS Cluster endpoint"
  value = module.hello_minio_aws_eks_cluster.minio_aws_eks_cluster_endpoint
}

output "hello_minio_aws_eks_cluster_certificate_authority_data" {
  description = "Hello World AWS EKS Cluster CA Data"
  value = module.hello_minio_aws_eks_cluster.minio_aws_eks_cluster_certificate_authority_data
}

output "hello_minio_aws_eks_cluster_region" {
  description = "Hello World AWS EKS Cluster region"
  value       = var.hello_minio_aws_region
}

output "hello_minio_aws_eks_cluster_name" {
  description = "Hello World AWS EKS Cluster name"
  value       = module.hello_minio_aws_eks_cluster.minio_aws_eks_cluster_name
}