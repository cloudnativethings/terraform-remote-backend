utput "ctaws-master-s3-bucket-name" {
  value = data.aws_s3_bucket.ctaws-master-tfstate
}

output "ctaws-master-dynamoDB-name" {
  value = data.aws_dynamodb_table.terraform.tfstate
}

output "ctaws-master-azs-info" {
  value = data.aws_availability_zones.ctaws-master-azs
}

#