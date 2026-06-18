data "aws_vpc" "default" {
    default = true
}

#data "aws_subnet" "default"{
#    filter {
#      name = "vpc-id"
#      values = [data.aws_vpc.default.id]

#   }
#}

resource "aws_security_group" "sg"{
    name = var.sg-name
    description = var.sg-name
    vpc_id = data.aws_vpc.default.id 

    ingress {
        from_port = var.ingress-ssh
        to_port = var.ingress-ssh
        protocol = "tcp"
        cidr_blocks =  ["0.0.0.0/0"]
    }

    ingress {
        from_port = var.ingress-http
        to_port = var.ingress-http
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      Name = var.sg-name
    }
}

resource "aws_instance" "my_instance" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key-name
    vpc_security_group_ids = [aws_security_group.sg.id]
    tags = var.instance-name

}