provider "aws" {
    region = "us-east-2"
}

resource "aws_s3_bucket" "e_bucket" {
    bucket = "fastgeulmastervolvo"
    acl    = "private"
    
    tags = {
        Environment = "Dev"
    }
}

resource "aws_s3_bucket_object" "object" {
  bucket = "${aws_s3_bucket.e_bucket.id}"
  key    = "file.txt"
  source = "/home/eyal/test.txt"

  etag = filemd5("/home/eyal/test.txt")
}
