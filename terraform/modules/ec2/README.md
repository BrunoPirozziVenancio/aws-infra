# Modulo: EC2

Modulo Terraform reutilizavel para criacao de instancias EC2 na AWS com Security Group configurado.

## Recursos criados

- Instancia EC2
- Security Group com acesso SSH e HTTP

## Como usar

module "ec2" {
  source        = "./modules/ec2"
  instance_name = "minha-instancia"
  instance_type = "t2.micro"
  ami_id        = "ami-0c02fb55956c7d316"
  subnet_id     = module.vpc.public_subnet_ids[0]
  vpc_id        = module.vpc.vpc_id
  environment   = "dev"
}

## Inputs

- instance_name: Nome da instancia
- ami_id: ID da AMI (default: Amazon Linux 2)
- instance_type: Tipo da instancia (default: t2.micro)
- subnet_id: ID da subnet
- vpc_id: ID da VPC
- key_name: Nome do key pair SSH
- environment: Ambiente (dev, staging, prod)

## Outputs

- instance_id: ID da instancia
- public_ip: IP publico
- private_ip: IP privado
- security_group_id: ID do Security Group
