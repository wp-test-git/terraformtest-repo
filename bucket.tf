provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket_name" {
  bucket = "tf-test-bucket-today"
  acl    = "private"

  tags = {
    Name        = "bucket_name"
    Environment = "tfdev"
  }
}
