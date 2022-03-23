resource "aws_eip" "ngw-eip" {
  vpc = true
  depends_on = [aws_internet_gateway.igw]
}

resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.ngw-eip.id
  subnet_id     = aws_subnet.public1

  depends_on = [aws_internet_gateway.igw]
  tags = {
        Name = "NGW"
    }
}
