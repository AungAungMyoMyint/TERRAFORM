# Terraform Block
terraform {
  required_version = "~> 1.5.1"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Provider-1 Block (default provider)
provider "aws" {
    region = "ap-southeast-1"
    profile = "default"
}

# Provider-2 Block (ap-northeast-1)
provider "aws" {
    region = "ap-northeast-1"
    profile = "default"
    alias = "aws-northeast-1"
}

/* 
Note-1: Require to install AWS cli and configure AWS credentials profile on local pc, default path is
$HOME/.aws/credentials
*/
