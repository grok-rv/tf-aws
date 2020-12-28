output "ec2-instanceid" {
  value = data.aws_instance.ec2-test-data.id
}

output "s3-bucket" {
  value = aws_s3_bucket.terraform_state
}

output "userss" {
  value = [for user in var.users : upper(user) if length(user) > 2]
}