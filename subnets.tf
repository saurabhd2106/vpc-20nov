resource "aws_subnet" "public_subnet" {

    cidr_block = var.public_subnet_ip_range

    vpc_id = aws_vpc.vpc.id

    tags = {
      "Name" = "public_subnet"
    }
}

resource "aws_subnet" "private_subnet" {

    cidr_block = var.private_subnet_ip_range

    vpc_id = aws_vpc.vpc.id

    tags = {
      "Name" = "private_subnet"
    }
}