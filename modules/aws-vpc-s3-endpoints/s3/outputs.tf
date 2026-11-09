output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.private_bucket.bucket
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.private_bucket.arn
}

output "test_file" {
  description = "Key of the uploaded test file"
  value       = aws_s3_object.test_file.key
}
