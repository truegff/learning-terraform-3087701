data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = [var.ami_filter.name]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = [var.ami_filter.owner] # Bitnami
}

data "aws_ami" "webserver_ami" {
    most_recent = true

    owners = [ "self" ]
    tags = {
      Name = "webserver"
      Deploy = "true"
    }
}