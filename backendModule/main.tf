resource "aws_dynamodb_table" "dynamodb_table"{
  name = var.dynamodb_table_name
  billing_mode = var.billing_mode
  read_capacity = var.read_capacity
  write_capacity = var.write_capacity
  hash_key = var.hash_key

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = var.dynamodb_table_name
  }

}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.s3_bucket_name
 
  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = false #var.s3_prevent_destroy
  }
}

resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = var.s3_versioning_status
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "default" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = var.s3_sse_algorithm
    }
  }
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.terraform_state.id
  block_public_acls       = var.s3_block_public_acls
  block_public_policy     = var.s3_block_public_policy
  ignore_public_acls      = var.s3_ignore_public_acls
  restrict_public_buckets = var.s3_restrict_public_buckets
}
