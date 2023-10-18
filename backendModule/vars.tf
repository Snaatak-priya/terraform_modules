variable "dynamodb_table_name" {
    type = string
    default = "snaatak-project-lock-table"
}

variable "billing_mode" {
    type = string
    default = "PROVISIONED"

}

variable "read_capacity" {
    type = string
    default = "5"
}

variable "write_capacity" {
    type = string
    default = "5"

}

variable "hash_key" {
    type = string
    default = "LockID"

}

variable "s3_bucket_name" {
    type = string
    default = "snaatak-project-tfstate-storage"

}


variable "s3_versioning_status" {
    type = string
    default = "Enabled"
}

variable "s3_sse_algorithm" {
    type = string
    default = "AES256"

}

variable "s3_block_public_acls" {
    type = bool
    default = "true"
}

variable "s3_block_public_policy" {
    type = bool
    default = "true"
}

variable "s3_ignore_public_acls" {
    type = bool
    default = "true"
}

variable "s3_restrict_public_buckets" {
    type = bool
    default = "true"
}
