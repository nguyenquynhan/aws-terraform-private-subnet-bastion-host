resource "aws_route_table" "my_vpc_ap_southeast_1a_nated" {
    vpc_id = aws_vpc.my_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.gw.id
    }

    tags = {
        Name = "Main Route Table for NAT-ed subnet"
    }
}

resource "aws_route_table_association" "my_vpc_ap_southeast_1a_nated" {
    subnet_id = aws_subnet.private.id
    route_table_id = aws_route_table.my_vpc_ap_southeast_1a_nated.id
}