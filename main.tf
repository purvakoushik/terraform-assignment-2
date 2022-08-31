# creating ec2 instance with the help of for each loop
resource "aws_instance" "web" {
  for_each      = var.resource_ec2
  ami           = "ami-05fa00d4c63e32376"
  instance_type = var.instance_type_ec2

  tags = {
    name    = each.value
    owner   = "koushik.mahendra@cloudeq.com"
    purpose = "assignment"
  }
}

# creating s3 bucket with the help of count
resource "aws_s3_bucket" "website" {
  count  = length(var.resource_s3)
  bucket = var.resource_s3[count.index]

  tags = {
    owner   = "koushik.mahendra@cloudeq.com"
    purpose = "assignment"
  }
}
