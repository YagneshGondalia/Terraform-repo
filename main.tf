

resource "aws_vpc" "myvpc" {
    cidr_block = var.cidr
} 

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "public_subnet_1"
  }
}