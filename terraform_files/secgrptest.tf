provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "vpctest" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "secgrptest" {
  vpc_id = aws_vpc.vpctest.id

  name        = "secgrptest"
  description = "Allow inbound and outbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] // Allow SSH from anywhere
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] // Allow HTTP from anywhere
  }

  // Outbound rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"          // All traffic
    cidr_blocks = ["0.0.0.0/0"] // Allow all outbound traffic
  }
}
