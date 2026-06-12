resource "aws_instance" "ec2-instance" {
    ami = "ami-0db56f446d44f2f09"
    instance_type = "t3.micro"
    key_name = "ubuntu"
    vpc_security_group_ids = ["sg-04e83fa67033a1f69"]
    user_data = file("/root/terraform-practice/Day-1/user-data.sh")
    root_block_device {
      volume_size = 10
      volume_type = "gp3"
    }
    tags = {
      Name = "terraform-ec2"
    }
    
}