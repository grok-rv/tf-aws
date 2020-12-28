resource "aws_instance" "ec2-test" {
  ami           = var.aws-ami-id
  instance_type = var.aws-instance-type
  tags = {
    Name       = "ec2-test"
    department = "qa"
  }
}


data "aws_instance" "ec2-test-data" {
  instance_id = aws_instance.ec2-test.id
}

resource "aws_iam_user" "nonadminusers" {
  for_each = toset(var.users)
  name     = each.value
}

/*
resource "aws_autoscaling_group" "asg-ec2" {
  max_size = 0
  min_size = 0

  dynamic "tag" {
    for_each = var.asg_tags
    content {
      key                 = tag.key
      value               = tag.value
      propagate_at_launch = true
    }
  }

}
*/
