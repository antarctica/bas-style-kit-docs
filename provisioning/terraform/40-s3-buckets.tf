#
# This file relies on the AWS Terraform provider being previously configured - see '00-providers.tf'

# Bucket with static website support (Staging)
#
# AWS source: https://aws.amazon.com/s3/
# Terraform source: https://www.terraform.io/docs/providers/aws/r/s3_bucket.html
resource "aws_s3_bucket" "bas-style-kit-docs-stage" {
  bucket = "bas-style-kit-docs-stage"

  # Canned ACL - All objects can be read by anyone, but only the owner can change them
  #
  # Source: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl
  acl = "public-read"

  # Bucket policy - All objects can be read by anyone, but only the owner can change them
  #
  # http://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html#example-bucket-policies-use-case-2
  policy = "${file("41-bas-style-kit-docs-stage-bucket-policy.json")}"

  # Enables static website hosting for a bucket
  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags {
    Name         = "bas-style-kit-docs-stage"
    X-Project    = "BAS Style Kit Docs"
    X-Managed-By = "Terraform"
  }
}

# Bucket with static website support (Production)
#
# AWS source: https://aws.amazon.com/s3/
# Terraform source: https://www.terraform.io/docs/providers/aws/r/s3_bucket.html
resource "aws_s3_bucket" "bas-style-kit-docs-prod" {
  bucket = "bas-style-kit-docs-prod"

  # Canned ACL - All objects can be read by anyone, but only the owner can change them
  #
  # Source: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl
  acl = "public-read"

  # Bucket policy - All objects can be read by anyone, but only the owner can change them
  #
  # http://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html#example-bucket-policies-use-case-2
  policy = "${file("41-bas-style-kit-docs-prod-bucket-policy.json")}"

  # Enables static website hosting for a bucket
  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags {
    Name         = "bas-style-kit-docs-stage"
    X-Project    = "BAS Style Kit Docs"
    X-Managed-By = "Terraform"
  }
}