#
# Defines information required by Terraform providers

# Define using environment variable - e.g. TF_VAR_aws_access_key=XXX
# If you require a IAM user please contact the BAS Web & Applications Team.
#
# AWS source: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSGettingStartedGuide/AWSCredentials.html
variable "aws_access_key" {}

# Define using environment variable - e.g. TF_VAR_aws_secret_key=XXX
# If you require an IAM user please contact the BAS Web & Applications Team.
#
# AWS source: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSGettingStartedGuide/AWSCredentials.html
variable "aws_secret_key" {}

# Define using environment variable - e.g. TF_VAR_atlas_token=XXX
# If you require an Atlas user please contact the BAS Web & Applications Team.
#
# Atlas source: https://atlas.hashicorp.com/help/user-accounts/authentication
variable "atlas_token" {}

# AWS provider
# The BAS preferred public cloud provider
#
# AWS source: https://aws.amazon.com/
# Terraform source: https://www.terraform.io/docs/providers/aws/index.html
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "eu-west-1"
}

# Atlas provider
# Stores references to images from the BAS VM Templates project
#
# Project source: https://github.com/antarctica/packer-vm-templates
# Atlas source: https://atlas.hashicorp.com/help/terraform/artifacts/artifact-provider
# Terraform source: https://www.terraform.io/docs/providers/atlas/index.html
provider "atlas" {
    token = "${var.atlas_token}"
}
