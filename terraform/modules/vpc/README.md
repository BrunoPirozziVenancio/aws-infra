# Modulo: VPC

Modulo Terraform reutilizavel para criacao de VPC na AWS com subnets publicas e Internet Gateway.

## Recursos criados

- VPC
- Subnets publicas em multiplas AZs
- Internet Gateway
- Route Table publica

## Como usar

module "vpc" {
  source             = "./modules/vpc"
  vpc_name           = "minha-vpc"
  cidr_block         = "10.0.0.0/16"
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
  environment        = "dev"
}

## Inputs

- vpc_name: Nome da VPC
- cidr_block: CIDR da VPC (default: 10.0.0.0/16)
- public_subnets: Lista de CIDRs das subnets
- availability_zones: Lista de AZs
- environment: Ambiente (dev, staging, prod)

## Outputs

- vpc_id: ID da VPC
- vpc_cidr: CIDR da VPC
- public_subnet_ids: IDs das subnets
- internet_gateway_id: ID do IGW
