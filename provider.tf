terraform {
  backend "s3" {
    bucket = "tf-friday-19159"
    key    = "terraform.tstate"
    region = "us-east-2"
  }
}
  
provider "aws" {
  region = "${var.region}"
  shared_credentials_file = "/var/lib/jenkins/.aws/credentials"
}
