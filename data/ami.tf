data "aws_ami" "example" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Your-AMI-Name"]
  }

  owners = ["self"]
}
