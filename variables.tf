variable "aws-access-id" {
  description = "aws access id"
}
variable "aws-secret-id" {
  description = "aws secret id"
}
variable "aws-region" {
  default = "us-east-1"
}
variable "aws-ami-id" {
  default = "ami-04d29b6f966df1537"
}
variable "aws-instance-type" {
  default = "t2.micro"
}

variable "bucket" {
  default = "rvenu-s3-state-tffs"
}


variable "users" {
  default = ["raj", "admins", "test"]
}

variable "asg_tags" {
  type = map(string)
  default = {
    Name = "ASG_EC2"
    Type = "t2.micro"
    Team = "Dev"
  }
}

variable "environment" {
  default = "qa"
}

variable "owner" {
  default = "ram"
}
variable "department" {
  default = "devops"
}