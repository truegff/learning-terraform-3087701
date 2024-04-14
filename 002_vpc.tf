resource "aws_vpc" "QA" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "Staging" {
    cidr_block = "10.1.0.0/16"
}

resource "aws_vpc" "Prod" {
    cidr_block = "10.2.0.0/16"
}