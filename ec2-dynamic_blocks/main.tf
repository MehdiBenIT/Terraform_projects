provider "aws" {
  region  = "us-east-1"
}

resource "aws_vpc" "main_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "EC2-instance"
  }
}

resource "aws_internet_gateway" "int_gw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "main_gw"
  }
}

resource "aws_subnet" "public-subnet" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block =

}
