# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "sg-064b5cc3c8b6d4c7d"
# resource "aws_security_group" "web-sg" {
#   description = "import manually for works"
#   egress = [{
#     cidr_blocks      = ["0.0.0.0/0"]
#     description      = ""
#     from_port        = 0
#     ipv6_cidr_blocks = []
#     prefix_list_ids  = []
#     protocol         = "-1"
#     security_groups  = []
#     self             = false
#     to_port          = 0
#   }]
#   ingress = [{
#     cidr_blocks      = ["10.0.5.0/24"]
#     description      = ""
#     from_port        = 80
#     ipv6_cidr_blocks = []
#     prefix_list_ids  = []
#     protocol         = "tcp"
#     security_groups  = []
#     self             = false
#     to_port          = 80
#     }, {
#     cidr_blocks      = ["73.150.70.118/32"]
#     description      = ""
#     from_port        = 22
#     ipv6_cidr_blocks = []
#     prefix_list_ids  = []
#     protocol         = "tcp"
#     security_groups  = []
#     self             = false
#     to_port          = 22
#   }]
#   name                   = "import-manual-sg"
#   name_prefix            = null
#   revoke_rules_on_delete = null
#   tags = {
#     Name = "import-manual-sg"
#   }
#   tags_all = {
#     Name = "import-manual-sg"
#   }
#   vpc_id = "vpc-06f5402b0c780b0e3"
# }
