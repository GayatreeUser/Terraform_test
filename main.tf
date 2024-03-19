test_branch
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "test_instance0" {
  ami           = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
  tags = {
    Name = "test_instance0"
  }
}