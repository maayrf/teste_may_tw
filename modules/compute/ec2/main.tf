resource "aws_instance" "main" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  vpc_security_group_ids = var.security_group_ids
  tags = {
    Name = "main-ec2-instance"
  }
}