output "s3_endpoint_policy" {
  description = "IAM policy document JSON for S3 endpoint"
  value       = data.aws_iam_policy_document.s3_endpoint_policy.json
}
