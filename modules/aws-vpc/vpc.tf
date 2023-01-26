resource "aws_vpc" "training_vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "training_vpc_igw" {
  vpc_id = aws_vpc.training_vpc.id

  tags = {
    Name = var.igw_name
  }
}

# Public subnets

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.training_vpc.id
  cidr_block              = var.public_subnet_1_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.public_subnet_1_az

  tags = {
    Name = var.public_subnet_1_name
  }
}
resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.training_vpc.id
  cidr_block              = var.public_subnet_2_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.public_subnet_2_az

  tags = {
    Name = var.public_subnet_2_name
  }
}
resource "aws_subnet" "public_subnet_3" {
  vpc_id                  = aws_vpc.training_vpc.id
  cidr_block              = var.public_subnet_3_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.public_subnet_3_az

  tags = {
    Name = var.public_subnet_3_name
  }
}

# Private subnets

resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.training_vpc.id
  cidr_block              = var.private_subnet_1_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.private_subnet_1_az

  tags = {
    Name = var.private_subnet_1_name
  }
}
resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.training_vpc.id
  cidr_block              = var.private_subnet_2_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.private_subnet_2_az

  tags = {
    Name = var.private_subnet_2_name
  }
}
resource "aws_subnet" "private_subnet_3" {
  vpc_id                  = aws_vpc.training_vpc.id
  cidr_block              = var.private_subnet_3_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.private_subnet_3_az

  tags = {
    Name = var.private_subnet_3_name
  }
}

# Route tables and associations

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.training_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.training_vpc_igw.id
  }

  tags = {
    Name = var.public_rt_name
  }
}
resource "aws_route_table_association" "public_rt1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_rt.id
}
resource "aws_route_table_association" "public_rt2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public_rt.id
}
resource "aws_route_table_association" "public_rt3" {
  subnet_id      = aws_subnet.public_subnet_3.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table" "private_rt1" {
  vpc_id = aws_vpc.training_vpc.id
  route = []

  tags = {
    Name = var.private_1_rt_name
  }
}
resource "aws_route_table_association" "private_rt1" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.private_rt1.id
}

resource "aws_route_table" "private_rt2" {
  vpc_id = aws_vpc.training_vpc.id
  route = []

  tags = {
    Name = var.private_2_rt_name
  }
}
resource "aws_route_table_association" "private_rt2" {
  subnet_id      = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.private_rt2.id
}

resource "aws_route_table" "private_rt3" {
  vpc_id = aws_vpc.training_vpc.id
  route = []

  tags = {
    Name = var.private_3_rt_name
  }
}
resource "aws_route_table_association" "private_rt3" {
  subnet_id      = aws_subnet.private_subnet_3.id
  route_table_id = aws_route_table.private_rt3.id
}
