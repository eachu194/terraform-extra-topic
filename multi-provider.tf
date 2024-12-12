resource "aws_instance" "remote-server" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  tags = {
    Name="remote-exec-ec2"
  }
}

resource "aws_instance" "alias-server" {
  ami = "ami-055e3d4f0bbeb5878"
  instance_type = "t2.micro"
  tags = {
    Name="us-west-2-server"
  }
  provider = aws.west
}