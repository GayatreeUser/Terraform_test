terraform {
  backend "s3" {
    bucket         = "gterraform-state-bucket"  # Name of your S3 bucket for storing state
    key            = "terraform.tfstate"            # Name of the state file within the bucket
    region         = "us-east-1"                    # AWS region where the bucket is located
  }
}