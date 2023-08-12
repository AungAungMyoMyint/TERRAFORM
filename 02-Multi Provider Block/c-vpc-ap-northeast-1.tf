# Resource Block
resource "aws_vpc" "vpc-ap-northeast-1" {
    cidr_block = "10.0.0.0/16"
    provider = aws.aws-northeast-1
    tags = {
      "Name" = "vpc-ap-northeast-1"
    }  
}