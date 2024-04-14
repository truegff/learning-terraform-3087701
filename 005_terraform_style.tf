resource "aws_instance" "web" {
  count = 2

  ami           = "abc123"
  instance_type = "t2.micro"

  network_interface {
    # ...
  }

  lifecycle {
    create_before_destroy = true
  }
}
