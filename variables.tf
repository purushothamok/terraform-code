variable "vpc_cidr" {
  default     = "10.20.0.0/16"
  type        = string
  description = "choose cidr block for VPC"
}

variable "region" {
  default     = "us-east-1"
  type        = string
  description = "choose region"
}

variable "ingress_rules" {
  type = map(object({
    port  = string
    cidrs = list(string)
  }))
}

variable "ami" {
  default = "ami-07caf09b362be10b8"
}