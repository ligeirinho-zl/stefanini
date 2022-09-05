//--------------------------------------------------------------------
// Modules
variable "aws_region" {
    default = "us-west-2"
}

variable "vpc_cidr_block" {
    default = "10.250.0.0/16"
}
##Pode Comentar
variable "management_aws_ec2_transit_gateway_id" {
    default = "tgw-0e16b7de848739627"
}

variable "subnet_pub_cidr_blocks" {
    default = [
        # "10.250.0.0/19 " Reserverd for the future
        "10.250.32.0/19",
        "10.250.64.0/19",
        "10.250.96.0/19"
    ]
}

variable "subnet_prv_cidr_blocks" {
    default = [
        # "10.250.128.0/19" Reserved for the future
        "10.250.160.0/19",
        "10.250.192.0/19",
        "10.250.224.0/19"
    ]
}

variable "env" {
    default = "production"
}

### Pode comentar
variable "tgw_id" {
    default = "tgw-0e16b7de848739627"
}
