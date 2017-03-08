#
# Defines a policies for IAM users
#
# This file relies on the AWS Terraform provider being previously configured - see '00-providers.tf'

# In-line policy for user
# Grants permission for the IAM user assigned to this project to access resources owned or used by this project
#
# This resource implicitly depends on the 'aws_iam_user.bas-gitlab-deploy-bas-style-kit-docs' resource,
# which is defined in the 'site-all' environment and used as a hard-coded, static, reference.
#
# AWS source: https://aws.amazon.com/iam/
# Terraform source: https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html
resource "aws_iam_user_policy" "upload-snapshot-bas-style-kit-docs-stage" {
  name   = "upload-snapshot"
  user   = "${aws_iam_user.bas-gitlab-deploy-bas-style-kit-docs.name}"
  policy = "${file("52-iam-policy-upload-bas-package-service.json")}"
}

# In-line policy for user
# Grants permission for the IAM user assigned to this project to access resources owned or used by this project
#
# This resource implicitly depends on the 'aws_iam_user.bas-gitlab-deploy-bas-style-kit-docs' resource
#
# AWS source: https://aws.amazon.com/iam/
# Terraform source: https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html
resource "aws_iam_user_policy" "deploy-website-bas-style-kit-docs-stage" {
  name   = "deploy-website-stage"
  user   = "${aws_iam_user.bas-gitlab-deploy-bas-style-kit-docs.name}"
  policy = "${file("52-iam-policy-deploy-website-stage.json")}"
}

# In-line policy for user
# Grants permission for the IAM user assigned to this project to access resources owned or used by this project
#
# This resource implicitly depends on the 'aws_iam_user.bas-gitlab-deploy-bas-style-kit-docs' resource
#
# AWS source: https://aws.amazon.com/iam/
# Terraform source: https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html
resource "aws_iam_user_policy" "deploy-website-bas-style-kit-docs-prod" {
  name   = "deploy-website-prod"
  user   = "${aws_iam_user.bas-gitlab-deploy-bas-style-kit-docs.name}"
  policy = "${file("52-iam-policy-deploy-website-prod.json")}"
}
