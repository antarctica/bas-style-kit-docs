#
# Define the location of remote state files defining shared outputs
#
# This allows resources shared across projects (such as networking infrastructure) to be kept in sync without needing
# manual updates and allowing scalable, centralised management.
#
# This file relies on the AWS Terraform provider being previously configured - see '00-providers.tf'

# The BAS-AWS remote state includes Server Certificate outputs for CloudFront distributions.
#
# This resource requires a valid Atlas token specified as an environment variable (i.e. ATLAS_TOKEN=[Token])
#
# Atlas source: https://atlas.hashicorp.com/antarctica/environments/BAS-AWS
# Terraform source: https://www.terraform.io/docs/providers/terraform/r/remote_state.html
resource "terraform_remote_state" "BAS-AWS" {
    backend = "atlas"
    config {
        name = "antarctica/BAS-AWS"
        path = "antarctica/BAS-AWS"
    }
}

# The BAS-CORE-DOMAINS remote state includes Route53 Zone outputs for DNS records
#
# Atlas source: https://atlas.hashicorp.com/antarctica/environments/BAS-AWS
# Terraform source: https://www.terraform.io/docs/providers/terraform/r/remote_state.html
resource "terraform_remote_state" "BAS-CORE-DOMAINS" {
    backend = "atlas"
    config {
        name = "antarctica/BAS-CORE-DOMAINS"
        path = "antarctica/BAS-CORE-DOMAINS"
    }
}
