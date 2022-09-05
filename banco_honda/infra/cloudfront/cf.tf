resource "random_string" "r" {
  length  = 4
  upper   = false
  lower   = true
  special = false
}


resource "aws_cloudfront_distribution" "production" {
  origin {
    domain_name         = "terraform-431543442.us-east-1.elb.amazonaws.com"
    origin_id           = "ingress-${var.env}"
    connection_timeout  = 10
    connection_attempts = 3

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 60
      origin_protocol_policy   = "http-only"
      origin_read_timeout      = 60
      origin_ssl_protocols     = [
          "TLSv1",
          "TLSv1.1",
          "TLSv1.2",
        ]
    }
  }

  enabled                = true
  is_ipv6_enabled        = true
  comment                = "Default cloudfront distribution for ingress-${var.env}"

  logging_config {
    include_cookies = false
    bucket          = "start-digital-logs-cf-${random_string.r.result}-${var.env}.s3.amazonaws.com"
    prefix          = var.env
  }

  aliases = [
    "checkout-server.startdigital.com.br",
    "checkout.startdigital.com.br",
    "www.startdigital.com.br",
    "startdigital.com.br",
    "ecommerce-backend.startdigital.com.br"
  ]

  default_cache_behavior {
    allowed_methods        = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "ingress-${var.env}"
    compress               = true

    forwarded_values {
      query_string = true

      cookies {
        forward = "all"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "blacklist"
      locations        = ["CN"]
    }
  }

  tags = {
    env = var.env
  }

  viewer_certificate {
    cloudfront_default_certificate = false   # add for use cloudfront url
    minimum_protocol_version       = "TLSv1.2_2021"
    acm_certificate_arn            = var.aws_acm_certificate_arn
    ssl_support_method             = "sni-only"
  }
  

  # web_acl_id = var.waf_web_acl_id

  depends_on = [ 
    aws_s3_bucket.log
  ]
}
