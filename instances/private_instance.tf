resource "aws_instance" "private_instance" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"
  subnet_id     = var.private_subnet_id
  security_groups = [aws_security_group.my_security_group.id]
  key_name      = "your-key-pair"  # Modify with your SSH key pair

  user_data = file("scripts/user_data_private.sh")
}

output "private_instance_ip" {
  value = aws_instance.private_instance.private_ip
}
