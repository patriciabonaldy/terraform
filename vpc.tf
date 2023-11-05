resource "aws_vpc" "new-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "fullcycle-vpc"
  }
}

data "aws_availability_zones" "available" {}
output "az" {
  value = "data.aws_availability_zones.available.names"
}

resource "aws_subnet" "new_subnet-1" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.new-vpc.id
  tags = {
    Name = "fullcycle-subnet-1"
  }
}