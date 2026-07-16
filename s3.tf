resource "aws_s3_bucket" "playground_bucket" {
  bucket_prefix = "${var.bucket_name_prefix}-"
}

resource "aws_s3_bucket_versioning" "playground_bucket_versioning" {
  bucket = aws_s3_bucket.playground_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}