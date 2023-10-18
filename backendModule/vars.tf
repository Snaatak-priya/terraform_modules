variable "dynamodb_table_name" {
    type = string
}

variable "billing_mode" {
    type = string
}

variable "read_capacity" {
    type = string
}

variable "write_capacity" {
    type = string
}

variable "hash_key" {
    type = string
}

variable "s3_bucket_name" {
    type = string
}


variable "s3_versioning_status" {
    type = string
}

variable "s3_sse_algorithm" {
    type = string
}

variable "s3_block_public_acls" {
    type = bool
}

variable "s3_block_public_policy" {
    type = bool
}

variable "s3_ignore_public_acls" {
    type = bool
}

variable "s3_restrict_public_buckets" {
    type = bool
}
