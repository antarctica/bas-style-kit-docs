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
