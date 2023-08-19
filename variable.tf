# Input Variables
variable "vpc_id" {
  type    = string
  default = "	vpc-000e90d9297b59c69" # Replace with the actual VPC ID of your jenkins svr 
}

variable "security_group_id" {
  type    = string
  default = "sg-0b04e2e165a72b417" # Replace with the actual security group ID of your jenkins sg-group 
}

variable "public_subnet_id" {
  type    = string
  default = "subnet-012184054e30282a8" # Replace with the actual public subnet ID of your jenkins public subnet
}

variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "instance_type" {
    type = string
    default = "t2.small"
  
}

variable "instance_keypair" {
  type = string
  default = "Wale-KeyPair"
}
