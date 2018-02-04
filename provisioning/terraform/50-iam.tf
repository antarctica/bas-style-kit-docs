#
# This file is used to define resources for managing permissions to resources related to this project

# These resources are defined as complete examples designed for use in other projects
# Refer to the guidance notes in '/docs/services/iam.md' for conventions and policies used in BAS projects

# Within this combined example, these resources control how permissions to modify the contents of this static
# website are assigned to principles, in this example, the Continuous Delivery service.

# Access Keys
#
# IAM Access Keys/Secrets MUST NOT be created through Terraform to ensure this project can be open-sourced later.
# Instead Access Keys/Secrets MAY be created through either the AWS Console or AWS APIs/SDKs.

#    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *
#
# Principles
#
#    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *

# Continuous Delivery Principle
#
# This resource relies on the AWS Terraform provider being previously configured.
#
# AWS source: https://aws.amazon.com/iam/
# Terraform source: https://www.terraform.io/docs/providers/aws/r/iam_user.html
resource "aws_iam_user" "bas-gitlab-deploy-bas-style-kit-docs" {
  name = "bas-gitlab-deploy-bas-style-kit-docs"
}

#    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *
#
# Policy definitions & assignments
#
#    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *

# BAS Packages Service
#
# Policy to store assets in the BAS Packages Service
#
# Inline policy
#
# This resource implicitly depends on the 'aws_iam_user.bas-gitlab-deploy-bas-style-kit-docs' resource
# This resource relies on the AWS Terraform provider being previously configured.
#
# AWS source: http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html#customer-managed-policies
# Terraform source: https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html
#
# Tags are not supported by this resource
resource "aws_iam_user_policy" "bas-packages-service-management-policy" {
  name   = "bas-packages-service-management-policy"
  user   = "${aws_iam_user.bas-gitlab-deploy-bas-style-kit-docs.name}"
  policy = "${file("70-resources/iam/policies/inline/packages-service-prod.json")}"
}

# Bucket management policy (Staging)
#
# Policy to manage the S3 bucket holding static website content
#
# Inline policy
#
# This resource implicitly depends on the 'aws_iam_user.bas-gitlab-deploy-bas-style-kit-docs' resource
# This resource relies on the AWS Terraform provider being previously configured.
#
# AWS source: http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html#customer-managed-policies
# Terraform source: https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html
#
# Tags are not supported by this resource
resource "aws_iam_user_policy" "bas-style-kit-docs-staging-management-policy" {
  name   = "bas-style-kit-docs-staging-management-policy"
  user   = "${aws_iam_user.bas-gitlab-deploy-bas-style-kit-docs.name}"
  policy = "${file("70-resources/iam/policies/inline/staging-bucket.json")}"
}

# Bucket management policy (Production)
#
# Policy to manage the S3 bucket holding static website content
#
# Inline policy
#
# This resource implicitly depends on the 'aws_iam_user.bas-gitlab-deploy-bas-style-kit-docs' resource
# This resource relies on the AWS Terraform provider being previously configured.
#
# AWS source: http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html#customer-managed-policies
# Terraform source: https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html
#
# Tags are not supported by this resource
resource "aws_iam_user_policy" "bas-bas-style-kit-docs-production-management-policy" {
  name   = "bas-style-kit-docs-production-management-policy"
  user   = "${aws_iam_user.bas-gitlab-deploy-bas-style-kit-docs.name}"
  policy = "${file("70-resources/iam/policies/inline/production-bucket.json")}"
}
