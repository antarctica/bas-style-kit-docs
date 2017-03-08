#
# Defines a single user (account) through the AWS Identity and Access Management (IAM) service
#
# This file relies on the AWS Terraform provider being previously configured - see '00-providers.tf'

# Access Keys
# IAM Access Keys/Secrets MUST NOT be created through Terraform to ensure this project can be open-sourced later.
# Instead Access Keys/Secrets MAY be created through the AWS Console or through AWS APIs/CLIs.

# Single user
#
# AWS source: https://aws.amazon.com/iam/
# Terraform source: https://www.terraform.io/docs/providers/aws/r/iam_user.html
resource "aws_iam_user" "bas-gitlab-deploy-bas-style-kit-docs" {
    name = "bas-gitlab-deploy-bas-style-kit-docs"
}
