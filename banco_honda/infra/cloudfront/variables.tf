variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Default Region"
}

variable "cname_cloudfront" {
  type        = list
  default     = [
    "labs.stefanini.io"
  ]
  description = "Applications list"
}

variable "aws_acm_certificate_arn" {
  default     = "arn:aws:acm:us-east-1:490662283860:certificate/64a1e01b-884f-40fd-add3-cd3e553f004c"
  description = "SSL cert created at management account"
}

variable "env" {
    default = "production"
}

# variable "waf_web_acl_id" {
#   type        = string
#   description = "Start Digital WAF Web ACL ID "
# }
