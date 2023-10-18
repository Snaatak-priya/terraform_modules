output "dynamodb_table_id" {
  value = aws_dynamodb_table.dynamodb_table.id
}

output "s3_bucket_id" {
  value = aws_s3_bucket.terraform_state.id
}
