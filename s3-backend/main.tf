provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "vprofile-eks-state-12345"

  force_destroy = true # for test only

  tags = {
    Name = "Terraform State Bucket"
  }
}