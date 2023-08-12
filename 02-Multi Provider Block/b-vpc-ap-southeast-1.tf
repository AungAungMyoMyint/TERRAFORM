# Resource Block
resource "aws_vpc" "vpc-ap-southeast-1" {
    cidr_block = "10.0.0.0/16"
    tags = {
      "Name" = "vpc-ap-southeast-1"
    }  
}