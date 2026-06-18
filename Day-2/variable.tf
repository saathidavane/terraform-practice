variable "sg-name" {
    default = "my-sg-for-default-vpc"
}

variable "ingress-ssh" {
    default = 22
}

variable "ingress-http" {
    default = 80

}

variable "ami" {
    default = "ami-0e38835daf6b8a2b9"
  
}

variable "instance_type" {
    default = "t3.micro"
}

variable "key-name" {
    default = "ubuntu"
  
}

variable "instance-name" {
    default = "my_instance"
  
}