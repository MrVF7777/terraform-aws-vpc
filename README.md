# Terraform AWS VPC Module

### Usage

```

module "vpc" {
  source  = "MrVF7777/vpc/aws"
  cidr_block = "10.0.0.0/16"
  private_subnets_cidr = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets_cidr  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  tags = {
      Name = "Dev"
  }
}

```