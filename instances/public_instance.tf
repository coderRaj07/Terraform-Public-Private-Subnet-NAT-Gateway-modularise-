resource "aws_instance" "public_instance" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet_id
  security_groups = [aws_security_group.my_security_group.id]
  key_name      = "your-key-pair"  # Modify with your SSH key pair
  associate_public_ip_address = true

  user_data = file("scripts/user_data_public.sh")
}

output "public_instance_ip" {
  value = aws_instance.public_instance.public_ip
}
