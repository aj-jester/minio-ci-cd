variable "hello_minio_aws_region" {
  description = "Hello MinIO AWS region"
  type        = string
}

/* */

variable "hello_minio_aws_vpc_cidr_block" {
  description = "Hello MinIO AWS VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "hello_minio_aws_vpc_cidr_newbits" {
  description = "Hello MinIO AWS VPC CIDR new bits"
  type        = number
  default     = 4
}

/* */

variable "hello_minio_public_igw_cidr_blocks" {
  type = map(number)
  description = "Hello MinIO Availability Zone CIDR Mapping for Public IGW subnets"
 
  default = {
    "us-east-1b" = 1
    "us-east-1d" = 2
    "us-east-1f" = 3
  }
}

/* */

variable "hello_minio_private_ngw_cidr_blocks" {
  type = map(number)
  description = "Hello MinIO Availability Zone CIDR Mapping for Private NGW subnets"
 
  default = {
    "us-east-1b" = 4
    "us-east-1d" = 5
    "us-east-1f" = 6
  }
}

/* */

variable "hello_minio_private_isolated_cidr_blocks" {
  type = map(number)
  description = "Hello MinIO Availability Zone CIDR Mapping for Private isolated subnets"
 
  default = {
    "us-east-1b" = 7
    "us-east-1d" = 8
    "us-east-1f" = 9
  }
}

/* */
