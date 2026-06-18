output "vpc_id" {
    value = aws_vpc.my_vpc.id 
}

output "sg_id" {
    value = aws_security_group.sg.id 
}

output "public_ip" {
    value = aws_instance.my_instance.id 
}

output "elastic_ip" {
    value = aws_eip.nat_eip.public_ip
}