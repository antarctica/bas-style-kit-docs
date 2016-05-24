#
# Defines a single S3 bucket to hold a static website
#
# This file relies on the AWS Terraform provider being previously configured - see '00-providers.tf'

# Staging environment bucket
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
        Name = "bas-style-kit-docs-stage"
        X-Project = "bas-style-kit"
        X-Managed-By = "Terraform"
    }
}

# Note: A CloudFront distribution is required for this bucket, which is required for custom CNAME support
# These currently have to be enabled manually through the AWS Console

# Note: DNS CNAME records for this S3 bucket are managed by BAS ICT
# Contact: helpdesk@bas.ac.uk
