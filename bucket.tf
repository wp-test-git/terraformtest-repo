provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "tf-test-bucket-today"
  acl    = "private"

  tags = {
    Name        = "test_bucket"
    Environment = "tfdev"
  }
}
