variable "aws_region" {
    type = string
    description = "Enter the Region of the infrastructure"  
}

variable "aws_access_key" {
    type = string
    description = "Enter the access key of the aws account"  
}

variable "aws_secret_key" {
    type = string
    description = "Enter the secret key of the aws account"  
}

variable "bucket_name" {
    type = string
    description = "Enter a Name for the S3 Bucket and the S3 name must be Unique Globally"  
}