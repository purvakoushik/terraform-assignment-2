variable "instance_type_ec2" {
  type = string
}

variable "resource_ec2" {
  type = map(any)
}

variable "resource_s3" {
  type = list(any)
}
