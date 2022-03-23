variable "cidr_block" {}
variable "tags" {
    type = map
}

variable "private_subnets_cidrs" {
  description = "private subnet cidr ip's"
  type        = list(string)
  default     = [
      "10.0.1.0/24",
      "10.0.2.0/24",
      "10.0.3.0/24",
  ]
}

variable "public_subnets_cidrs" {
  description = "public subnet cidr ip's"
  type        = list(string)
  default     = [
      "10.0.101.0/24",
      "10.0.102.0/24",
      "10.0.103.0/24",
  ]
}