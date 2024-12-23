# import {
#   to = aws_security_group.web-sg
#   id = "sg-064b5cc3c8b6d4c7d"
# }

# resource "aws_instance" "app" {
#   ami = "ami-08eec49a05b603ba3"
#   instance_type = "t2.micro"
#   count = 3

#   tags = {
#     name = "app-server"
#   }
# }

# output "instance_id" {
#   value = aws_instance.app[*].id
# }

# variable "iam_user" {
#     type = set(string)
#     description = "iam user"
#     default = toset(["Todd", "James", "Alice", "Dottie", "Tate", "James"])
  
# }

# resource "aws_iam_user" "user-accounts" {
#   #for_each = toset(["Todd", "James", "Alice", "Dottie", "Tate", "James"])
#   for_each = var.iam_user
#   name     = each.key
# }

# resource "aws_security_group" "demo_sg" {
#   name        = "sample-sg"

#   ingress {
#     from_port   = 8200
#     to_port     = 8200
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 8201
#     to_port     = 8201
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 8300
#     to_port     = 8300
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 9200
#     to_port     = 9200
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 9500
#     to_port     = 9500
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }


# resource "aws_security_group" "demo_sg" {
#   name        = "sample-sg-provisioner"

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#     ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# resource "aws_instance" "test" {
#   ami = "ami-0230bd60aa48260c6"
#   instance_type = "t2.micro"
#   tags = {
#     Name="remote-exec-ec2"
#   }
#   key_name = "remote-kp"
#   vpc_security_group_ids = [aws_security_group.demo_sg.id]
#   connection {
#     type ="ssh"
#     user = "ec2-user"
#     private_key = file("./remote-kp.pem")
#     host = self.public_ip
#   }

# provisioner "remote-exec" {
#   inline = [
#     "sudo touch /home/ec2-user/movies"    
#   ]
# }
# }