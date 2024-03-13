provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "testinst" {
  ami           = "ami-0c94855ba95c574c8" # replace with your desired AMI ID
  instance_type = "t2.micro" # replace with your desired instance type

  tags = {
    Name = "example-instance"
  }
}
