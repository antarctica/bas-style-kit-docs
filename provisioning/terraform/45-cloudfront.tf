#
# This file relies on the AWS Terraform provider being previously configured - see '00-providers.tf'
# This file relies on a remote state resource being previously configured for shared outputs - see '01-remote-state.tf'

# Simple distribution (Staging)
#
# This resource implicitly depends on the 'aws_s3_bucket.bas-style-kit-docs-stage' resource
# This resource implicitly depends on outputs from the the 'terraform_remote_state.BAS-AWS' data source
#
# AWS source: https://aws.amazon.com/cloudfront/
# Terraform source: https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html
resource "aws_cloudfront_distribution" "bas-style-kit-docs-stage" {
  enabled = true
  comment = "BAS Style Kit Docs (Staging)"

  default_root_object = "index.html"

  # Selects US and EU edge locations only
  #
  # Note: Antarctic ships and stations connect to the internet in London.
  # Source: https://aws.amazon.com/cloudfront/pricing/#price-classes for valid values and included locations
  price_class = "PriceClass_100"

  aliases = [
    "style-kit-testing.web.bas.ac.uk",
  ]

  # Origin configuration
  #
  # Note: CloudFront is configured to communicate with the origin using HTTP, the distribution when accessed by
  # end-consumers will be HTTPS however.
  origin {
    domain_name = "${aws_s3_bucket.bas-style-kit-docs-stage.website_endpoint}"
    origin_id   = "S3-bas-style-kit-docs-stage"

    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "http-only"

      origin_ssl_protocols = [
        "TLSv1.2",
      ]
    }
  }

  # Behaviours
  default_cache_behavior {
    target_origin_id = "S3-bas-style-kit-docs-stage"

    viewer_protocol_policy = "redirect-to-https"
    compress               = true

    min_ttl     = 0
    default_ttl = 86400
    max_ttl     = 31536000

    allowed_methods = [
      "GET",
      "HEAD",
      "OPTIONS",
    ]

    cached_methods = [
      "GET",
      "HEAD",
    ]

    forwarded_values {
      query_string = false

      headers = [
        "Origin",
      ]

      cookies {
        forward = "none"
      }
    }
  }

  # Restrictions (not used but must be defined by Terraform)
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  # Enable SSL/TLS for aliases
  #
  # In this configuration a certificate previously uploaded to the IAM certificate store is used
  viewer_certificate {
    ssl_support_method       = "sni-only"
    minimum_protocol_version = "TLSv1"
    iam_certificate_id       = "${data.terraform_remote_state.BAS-AWS.BAS-AWS-CERT-STAR-WEB-BAS-AC-UK-ID}"
  }
}

# Simple distribution (Production)
#
# This resource implicitly depends on the 'aws_s3_bucket.bas-style-kit-docs-prod' resource
# This resource implicitly depends on outputs from the the 'terraform_remote_state.BAS-AWS' data source
#
# AWS source: https://aws.amazon.com/cloudfront/
# Terraform source: https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html
resource "aws_cloudfront_distribution" "bas-style-kit-docs-prod" {
  enabled = true
  comment = "BAS Style Kit Docs (Production)"

  default_root_object = "index.html"

  # Selects US and EU edge locations only
  #
  # Note: Antarctic ships and stations connect to the internet in London.
  # Source: https://aws.amazon.com/cloudfront/pricing/#price-classes for valid values and included locations
  price_class = "PriceClass_100"

  aliases = [
    "style-kit.web.bas.ac.uk",
  ]

  # Origin configuration
  #
  # Note: CloudFront is configured to communicate with the origin using HTTP, the distribution when accessed by
  # end-consumers will be HTTPS however.
  origin {
    domain_name = "${aws_s3_bucket.bas-style-kit-docs-prod.website_endpoint}"
    origin_id   = "S3-bas-style-kit-docs-prod"

    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "http-only"

      origin_ssl_protocols = [
        "TLSv1.2",
      ]
    }
  }

  # Behaviours
  default_cache_behavior {
    target_origin_id = "S3-bas-style-kit-docs-prod"

    viewer_protocol_policy = "redirect-to-https"
    compress               = true

    min_ttl     = 0
    default_ttl = 86400
    max_ttl     = 31536000

    allowed_methods = [
      "GET",
      "HEAD",
      "OPTIONS",
    ]

    cached_methods = [
      "GET",
      "HEAD",
    ]

    forwarded_values {
      query_string = false

      headers = [
        "Origin",
      ]

      cookies {
        forward = "none"
      }
    }
  }

  # Restrictions (not used but must be defined by Terraform)
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  # Enable SSL/TLS for aliases
  #
  # In this configuration a certificate previously uploaded to the IAM certificate store is used
  viewer_certificate {
    ssl_support_method       = "sni-only"
    minimum_protocol_version = "TLSv1"
    iam_certificate_id       = "${data.terraform_remote_state.BAS-AWS.BAS-AWS-CERT-STAR-WEB-BAS-AC-UK-ID}"
  }
}

# Alias static website distribution to a more suitable domain [HTTPS] (Staging)
#
# This resource implicitly depends on the 'aws_cloudfront_distribution.bas-style-kit-docs-stage' resource
# This resource implicitly depends on outputs from the the 'terraform_remote_state.BAS-AWS' data source
#
# AWS source: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/rrsets-working-with.html
# Terraform source: https://www.terraform.io/docs/providers/aws/r/route53_record.html
#
# Tags are not supported by this resource
resource "aws_route53_record" "bas-style-kit-docs-stage" {
  zone_id = "${data.terraform_remote_state.BAS-CORE-DOMAINS.WEB-BAS-AC-UK-ID}"

  name = "style-kit-testing"
  type = "CNAME"
  ttl  = "300"

  records = [
    "${aws_cloudfront_distribution.bas-style-kit-docs-stage.domain_name}",
  ]
}

# Alias static website distribution to a more suitable domain [HTTPS] (Production)
#
# This resource implicitly depends on the 'aws_cloudfront_distribution.bas-style-kit-docs-prod' resource
# This resource implicitly depends on outputs from the the 'terraform_remote_state.BAS-AWS' data source
#
# AWS source: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/rrsets-working-with.html
# Terraform source: https://www.terraform.io/docs/providers/aws/r/route53_record.html
#
# Tags are not supported by this resource
resource "aws_route53_record" "bas-style-kit-docs-prod" {
  zone_id = "${data.terraform_remote_state.BAS-CORE-DOMAINS.WEB-BAS-AC-UK-ID}"

  name = "style-kit"
  type = "CNAME"
  ttl  = "300"

  records = [
    "${aws_cloudfront_distribution.bas-style-kit-docs-prod.domain_name}",
  ]
}
