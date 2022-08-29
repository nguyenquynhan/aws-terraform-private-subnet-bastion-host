resource "aws_instance" "my_private" {
  ami           = "ami-0b89f7b3f054b957e"
  instance_type = "t2.micro"
  key_name = "techmaster-03-ec2-private" #Chú ý: Đổi lại theo key name của bạn
  vpc_security_group_ids = [ aws_security_group.internal_ssh_and_ping.id ]
  subnet_id = aws_subnet.private.id
  tags = {
    Name = "Private Instance"
  }
}