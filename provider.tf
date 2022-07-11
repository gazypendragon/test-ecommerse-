provider "aws" {
  region = "${var.region}"
  shared_credentials_file = "/var/lib/jenkins/.aws/credentials"
}
terraform {
 
output "s3_bucket_name" {
  value = aws_s3_bucket.my-s3-bucket.id
}
output "s3_bucket_region" {
    value = aws_s3_bucket.my-s3-bucket.region
}
