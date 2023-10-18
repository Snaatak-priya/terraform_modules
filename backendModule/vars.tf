variable "dynamodb_table_name" {
    type = string
    default = ""
}

variable "billing_mode" {
    type = string
    default = ""

}

variable "read_capacity" {
    type = string
    default = ""
}

variable "write_capacity" {
    type = string
    default = ""

}

variable "hash_key" {
    type = string
    default = ""

}

variable "s3_bucket_name" {
    type = string
    default = ""

}


variable "s3_versioning_status" {
    type = string
    default = ""
}

variable "s3_sse_algorithm" {
    type = string
    default = ""

}

variable "s3_block_public_acls" {
    type = bool
    default = ""
}

variable "s3_block_public_policy" {
    type = bool
    default = ""
}

variable "s3_ignore_public_acls" {
    type = bool
    default = ""
}

variable "s3_restrict_public_buckets" {
    type = bool
    default = ""
}
