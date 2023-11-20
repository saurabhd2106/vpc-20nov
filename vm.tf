resource "aws_instance" "public_ec2" {

  ami = var.ami_image_name

  instance_type = var.instance_type

  # the VPC subnet
  subnet_id = aws_subnet.public_subnet.id

  # the security group
  vpc_security_group_ids = [aws_security_group.public_security_group.id]

  # the public SSH key
  key_name = data.aws_key_pair.key-pair.key_name

  associate_public_ip_address = true

  tags = {
    "Name" = "public_ec2"
  }
}

resource "aws_instance" "private_ec2" {

  ami = var.ami_image_name

  instance_type = var.instance_type

  # the VPC subnet
  subnet_id = aws_subnet.private_subnet.id

  # the security group
  vpc_security_group_ids = [aws_security_group.private_security_group.id]

  # the public SSH key
  key_name = data.aws_key_pair.key-pair.key_name

  tags = {
    "Name" = "private_ec2"
  }
}