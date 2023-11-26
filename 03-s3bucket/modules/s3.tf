resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
    force_destroy = true
}

resource "aws_s3_bucket_ownership_controls" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }  
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  depends_on = [ aws_s3_bucket_ownership_controls.bucket ]
  bucket = aws_s3_bucket.bucket.id
  acl = "private" #if needed "public-read" or "public-read-write"
}