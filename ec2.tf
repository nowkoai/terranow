resource "aws_instance" "Server" {
  count         = 1
  # ami           = "ami-0404778e217f54308"
  ami           = "ami-0757d9e44f1490914"

  instance_type = var.instance_type

  tags = {
    Name = "Server-${count.index}"
  }
}
