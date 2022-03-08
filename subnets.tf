resource "aws_subnet" "public-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name                        = "public-us-east-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "public-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name                        = "public-us-east-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "public-3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.5.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name                        = "public-us-east-1c"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}
resource "aws_subnet" "private-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name                              = "private-us-east-1a"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internal-elb" = 1
  }
}

resource "aws_subnet" "private-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name                              = "private-us-east-1b"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internal-elb" = 1
  }
}

resource "aws_subnet" "private-3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.6.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name                              = "private-us-east-1c"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internal-elb" = 1
  }
}

# public subnet
#resource "aws_subnet" "public_subnet" {
#  vpc_id                  = aws_vpc.main.id
#  count                   = length(var.public_cidr)
#  cidr_block              = element(var.public_cidr, count.index)
#  map_public_ip_on_launch = true
#  availability_zone       = element(var.availability_zone, count.index)
#  tags = {
#    Name                              = "public-subnet-${count.index}"
#    "kubernetes.io/cluster/eks"       = "shared"
#    "kubernetes.io/role/elb" = 1
#  }
#}
## private subnet
#resource "aws_subnet" "private_subnet" {
#  vpc_id                  = aws_vpc.main.id
#  count                   = length(var.private_cidr)
#  cidr_block              = element(var.private_cidr, count.index)
#  map_public_ip_on_launch = false
#  availability_zone       = element(var.availability_zone, count.index)
#
#  tags = {
#    Name                              = "private-subnet-${count.index}"
#    "kubernetes.io/cluster/eks"       = "shared"
#    "kubernetes.io/role/internal-elb" = 1
#  }
#}
