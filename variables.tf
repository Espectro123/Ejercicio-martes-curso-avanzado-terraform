# Global variables

variable "environment" {
  type = string
}

# Bucket variables

variable "bucket_name" {
  type = string
}

# VPC variables

variable "vpc_name" {
    type = string
    description = "Name for the VPC"
}

variable "vpc_cidr" {
    type = string
    description = "CIDR for the VPC"
}

variable "public_subnets" {
    type = list(string)
    description = "Public subnets"
}

variable "private_subnets" {
    type = string
    description = "Private subnets"
}