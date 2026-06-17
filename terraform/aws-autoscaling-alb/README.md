# Auto Scaling Group + Application Load Balancer

Infraestrutura que escala automaticamente conforme a demanda, com Load Balancer distribuindo o trafego entre as instancias.

## Recursos criados

- VPC com 2 subnets publicas em AZs diferentes
- Application Load Balancer (ALB)
- Auto Scaling Group com Launch Template
- Security Groups separados para ALB e EC2
- Politicas de scale up e scale down

## Como funciona

O ALB recebe o trafego e distribui entre as instancias do ASG.
Quando a carga aumenta, o ASG sobe novas instancias automaticamente.
Quando a carga diminui, o ASG remove instancias desnecessarias.

## Como usar

terraform init
terraform plan
terraform apply

## Outputs

- alb_dns_name: DNS do Load Balancer
- alb_url: URL para acessar a aplicacao
- asg_name: Nome do Auto Scaling Group
- vpc_id: ID da VPC criada

## Destruir

terraform destroy
