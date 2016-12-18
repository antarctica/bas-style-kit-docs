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
resource "aws_iam_user_policy" "deploy-website-bas-style-kit-docs-stage" {
    name = "deploy-website"
    user = "bas-gitlab-deploy-bas-style-kit-docs"
    policy = "${file("51-iam-policy-deploy-website.json")}"
}
