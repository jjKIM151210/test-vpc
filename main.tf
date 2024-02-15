module "vpc" {
  source  = "app.terraform.io/dev_org/vpc/aws"
  version = "1.0.0"

  name = "jj-vpc"
  cidr = "167.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  public_subnets  = ["167.0.101.0/24", "167.0.102.0/24", "167.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
