output "bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.playground_bucket.bucket
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.playground_instance.id
}

output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.playground_instance.public_ip
}

output "db_endpoint" {
  description = "RDS connection endpoint (host:port)"
  value       = aws_db_instance.playground_db.endpoint
}

output "db_name" {
  description = "Database name"
  value       = aws_db_instance.playground_db.db_name
}

output "db_username" {
  description = "Master username"
  value       = aws_db_instance.playground_db.username
}

output "db_password" {
  description = "Master password (marked sensitive — use `terraform output -raw db_password` to reveal)"
  value       = random_password.db_password.result
  sensitive   = true
}