#
# Defines a single user (account) through the AWS Identity and Access Management (IAM) service
#
# This file relies on the AWS Terraform provider being previously configured - see '00-providers.tf'
# This file relies on a manually created 'automatons' group to have been created

# Access Keys
# IAM Access Keys/Secrets MUST NOT be created through Terraform to ensure this project can be open-sourced later.
# Instead Access Keys/Secrets MAY be created through the AWS Console or through AWS APIs/CLIs.

# Single user
#
# AWS source: https://aws.amazon.com/iam/
# Terraform source: https://www.terraform.io/docs/providers/aws/r/iam_user.html
resource "aws_iam_user" "semmaphore-deploy-bas-style-kit-docs-stage" {
    name = "semmaphore-deploy-bas-style-kit-docs-stage"
}

# In-line policy for user
#
# This resource implicitly depends on the 'aws_iam_user.semmaphore-deploy-bas-style-kit-docs-stage' resource
#
# AWS source: https://aws.amazon.com/iam/
# Terraform source: https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html
resource "aws_iam_user_policy" "semmaphore-deploy-bas-style-kit-docs-stage-semaphore-cd" {
    name = "semmaphore-deploy-bas-style-kit-docs-stage-semaphore-cd"
    user = "${aws_iam_user.semmaphore-deploy-bas-style-kit-docs-stage.name}"
    policy = "${file("51-iam-policy-semaphore-s3-continous-deployment.json")}"
}
