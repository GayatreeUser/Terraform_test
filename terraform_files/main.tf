provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "test_instance" {
  ami           = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
  tags = {
    Name = "test_instance"
  }
}
