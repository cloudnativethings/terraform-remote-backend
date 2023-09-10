variable "ctaws-master-region" {
  type = string
  default = "ap-southeast-1"
}

variable "aws_profile" {
  descdescription = "AWS Profile name"
  type = string
  default = "ctaws-master"
}

variable "s3_bucket_name"{
    description = "CT Master S3 Bucket Name"
    type = string
    default = "ctaws-master"
}

variable "aws_dynamodb_table" {
    description = "CT Masete dynamoDB Name"
    type = string
    default = "ctaws-master"
}

variable "" {
  
}

    