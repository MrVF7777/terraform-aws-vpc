resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_blk
   enable_dns_hostnames = true
   enable_dns_support   = true
  tags = local.tags
}