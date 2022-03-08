resource "aws_nat_gateway" "natgw1" {

  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.public-1.id

  tags = {
    Name = "NAT 1"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}

resource "aws_nat_gateway" "natgw2" {

  allocation_id = aws_eip.nat2.id
  subnet_id     = aws_subnet.public-2.id

  tags = {
    Name = "NAT 2"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}

resource "aws_nat_gateway" "natgw3" {

  allocation_id = aws_eip.nat3.id
  subnet_id     = aws_subnet.public-3.id

  tags = {
    Name = "NAT 3"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}
