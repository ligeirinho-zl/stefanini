
variable "aws_zone_id" {}
variable "aws_domain" {}

variable "record_ip_publico" {
type = list(any)

  default = ["3.96.67.100"]

}
