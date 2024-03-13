provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "testinst" {
  ami           = "ami-0c94855ba95c574c8" #  AMI ID
  instance_type = "t2.micro" 

  tags = {
    Name = "example-instance"
  }
}
