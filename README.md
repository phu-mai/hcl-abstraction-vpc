# VPC BASE

## Example:

```
variables.tf
vpcs = {
  "vpc_poc"  = {
    eks_cluster_name = "vpc_poc-001"
    cidr             = "100.222.24.0/21"  
    private_subnets  = ["100.222.24.0/24", "100.222.25.0/24", "100.222.26.0/24", "100.222.27.0/24", "100.222.28.0/24", "100.222.29.0/24"]
    public_subnets   = ["100.222.31.0/26", "100.222.31.64/26", "100.222.31.128/26"]
    database_subnets = ["100.222.30.0/25", "100.222.30.128/25"]
  }
}
```

```
module "vpc_poc" {
  source = "git::git@github.com:cxagroup/infra-terraform-modules.git//terraform-aws-vpc"
  vpc_settings = var.vpcs
}


```
