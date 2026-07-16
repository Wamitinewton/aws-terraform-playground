variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "bucket_name_prefix" {
  description = "Prefix for the S3 bucket name (bucket names must be globally unique)"
  type        = string
  default     = "my-playground-bucket"
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into the instance. Tighten this to your own IP."
  type        = string
  default     = "0.0.0.0/0"
}

variable "db_name" {
  description = "Name of the initial database created inside the RDS instance"
  type        = string
  default     = "playgrounddb"
}

variable "db_username" {
  description = "Master username for RDS"
  type        = string
  default     = "playground_admin"
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "Allocated storage in GB"
  type        = number
  default     = 20
}

variable "db_engine_version" {
  description = "PostgreSQL engine version"
  type        = string
  default     = "16.4"
}