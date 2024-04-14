resource "aws_instance" "blog" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t3.nano"
}
