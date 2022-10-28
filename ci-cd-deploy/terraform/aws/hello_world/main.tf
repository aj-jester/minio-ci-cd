terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.31.0"
    }
  }
}

provider "aws" {
  region  = var.hello_minio_aws_region
}

module "hello_minio_aws_vpc" {
  source = "../modules/vpc"

  minio_aws_vpc_cidr_block   = var.hello_minio_aws_vpc_cidr_block
  minio_aws_vpc_cidr_newbits = var.hello_minio_aws_vpc_cidr_newbits

  minio_public_igw_cidr_blocks       = var.hello_minio_public_igw_cidr_blocks
  minio_private_ngw_cidr_blocks      = var.hello_minio_private_ngw_cidr_blocks
  minio_private_isolated_cidr_blocks = var.hello_minio_private_isolated_cidr_blocks

}

/* EKS Example */

module "hello_minio_aws_eks_cluster" {
  source = "../modules/eks"

  minio_aws_eks_cluster_subnet_ids = values(module.hello_minio_aws_vpc.minio_aws_subnet_private_ngw_map)

}