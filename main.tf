
 resource "aws_s3_bucket" "ctaws-master_tfstate" {
  provider = aws.ctaws-master
  depends_on = [aws_s3_bucket_owndership_contorls.aws_s3_bucket_owndership_contorls]
  bucket = "ctaws-master-tfstate"
  acl = "private"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  resource "aws_dynamodb_table" "terraform_locks" {
    name = var.dynamodb_name
    billing_mode = var.billing_dynamodb_mode
    hash_key = "LockID"
    attribute{
        name = "LockID"
        type = "S"
    }
  }

}