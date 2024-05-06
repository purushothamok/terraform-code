resource "aws_instance" "web" {
  subnet_id = aws_subnet.main.*.id[0]
  ami = var.ami
  instance_type = "t2.micro"
  security_groups = [aws_security_group.web.id]
  key_name = "tomcat"
  user_data = file("./httpd.sh")
  associate_public_ip_address = true
  tags = {
    Name = "web-tca"
  }
}