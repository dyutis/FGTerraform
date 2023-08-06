resource "aws_s3_bucket" "fd_bucket" {
  bucket = "FD-007-bucket"  # Replace with your desired bucket name
  acl    = "private"
  }
