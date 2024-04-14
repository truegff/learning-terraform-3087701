resource "aws_security_group" "allow_tls" {
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["1.2.3.4/32"]
    }
    egress {
        from_port = 0
        to_port = 0,
        protocol = "-1"
    }
}

resource "aws_security_group" "allow_tls" {}
resource "aws_security_group_rule" "https_inbound" {
    type = "ingress"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["1.2.3.4/32"]
    security_group_id = aws_security_group.allow_tls.id
}