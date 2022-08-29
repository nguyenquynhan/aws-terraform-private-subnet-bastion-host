resource "aws_instance" "my_public" {
  ami           = "ami-0b89f7b3f054b957e"
  instance_type = "t2.micro"
  key_name = "techmaster-03-ec2-public" #Chú ý: Đổi lại theo key name của bạn
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]
  subnet_id = aws_subnet.public.id
  tags = {
    Name = "Public Instance"
  }
}