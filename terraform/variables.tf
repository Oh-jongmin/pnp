variable "region" {
  description = "AWS region"
  type        = string
}

variable "my_ip" {
  description = "My IP Address"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  default = ["10.0.10.0/24", "10.0.20.0/24"]
}

variable "private_mgmt_subnet_cidrs" {
  default = ["10.0.11.0/24", "10.0.21.0/24"]
}

variable "private_ng_subnet_cidrs" {
  default = ["10.0.12.0/24", "10.0.22.0/24"]
}

variable "private_rds_subnet_cidrs" {
  default = ["10.0.13.0/24", "10.0.23.0/24"]
}

variable "key_name" {
  description = "Key Pair"
  type        = string
  sensitive   = true
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "bastion_instance_type" {
  description = "The instance type of bastion server"
  type        = string
}

variable "mgmt_instance_type" {
  description = "The instance type of mgmt server"
  type        = string
}

variable "db_username" {
  description = "The master username for RDS"
  type        = string
}

variable "db_password" {
  description = "The master password for RDS"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Initial database name"
  type        = string
}

variable "domain_name" {
  description = "Route 53 Domain Name"
  type        = string
}

variable "route53_zone_id" {
  description = "Route 53 Hosted Zone ID"
  type        = string
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version for EKS cluster"
  type        = string
}

