# DNS do Load Balancer

output "alb_dns_name" {
  description = "DNS público do Load Balancer"
  value = aws_lb.alb.dns_name
}

#    Significado de AWS_LB / ALB / DNS_NAME

#  AWS_LB = (Application Load Balancer)
#  ---------------------------------------------------------------------------------------------------------
#  ALB = recurso (resource) usado para criar um balanceador de carga na AWS no Terraform
#  ---------------------------------------------------------------------------------------------------------
#  DNS_NAME = É um atributo que o Terraform expõe após a criação do ALB. Ele contém o endereço DNS público que a 
#  AWS gera automaticamente para seu balanceador.
