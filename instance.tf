# resource "aws_instance" "example" {
#   ami           = "ami-07caf09b362be10b8" // Specify the ID of the Amazon Machine Image (AMI) for the instance
#   instance_type = "t2.micro"              // Specify the instance type, e.g., t2.micro, t3.small, etc.
#   key_name      = "tomcat"                // Specify the name of the key pair to use for SSH access

#   // Reference the existing security group(s) to associate with the instance
#   vpc_security_group_ids = [
#     "sg-000808748f20121a7",
#     // Add more security group IDs if necessary
#   ]

#   // Specify the existing subnet ID where the instance will be launched
#   subnet_id = "subnet-0511b438a9808659e"

#   // Optional: Specify additional configuration such as tags, user_data, etc.

#   // Example tags:
#   tags = {
#     Name = "terra-instance"
#     // Add more tags if necessary
#   }

#   // Optional: User data script
#   user_data = <<-EOF
#               #!/bin/bash
#               echo "Hello, World!" > /tmp/hello.txt
#               EOF
# }