resource "aws_s3_bucket" "my_s3_bucket" {
  bucket_prefix = var.bucket_prefix
  tags=var.tags

resource "aws_s3_bucket_versioning" "this"{
  bucket=aws_S3_bucket.my_s3_bucket.id

  versioning configuration {
  status=var.versioning? "Enabled" : "Suspended'"
  }
}
