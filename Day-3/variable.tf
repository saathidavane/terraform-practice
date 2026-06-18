variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
    default = "10.0.0.0/20"
}

variable "public_az" {
    default = "ap-south-1a"
}

variable "private_subnet_cidr" {
    default = "10.0.16.0/20"
}

variable "private_az" {
    default = "ap-south-1b"
}

variable "ami" {
    default = "ami-0e38835daf6b8a2b9"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "key_name" {
    default = "ubuntu"
}