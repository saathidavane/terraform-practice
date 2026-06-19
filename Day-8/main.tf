###terraform import###
#resource "aws_s3_bucket" "s3" {
#    bucket = "s3-bucket-terraform-2345"
#}

###terraform loops###
resource "aws_instance" "my_instance" {
    for_each = tomap({
        instance-1 = "t3.micro"
        instance-2 = "t3.small"
        instance-3 = "c7i-flex.large"
    })
    ami = "ami-0e38835daf6b8a2b9"
    instance_type = each.value
    tags = {
        Name = each.key
    }
  
}