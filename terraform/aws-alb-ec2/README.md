# Projeto: Load Balancer com duas EC2 (Terraform)

Este projeto cria duas instâncias EC2 com Apache e um **Application Load Balancer (ALB)** que distribui as requisições entre elas.

## Recursos criados

- 2 EC2 (Amazon Linux 2) com Apache e página HTML mostrando o hostname
- Security Group com HTTP (80) e SSH (22)
- ALB público com DNS exposto
- Target Group com checagem de saúde

## Pré-requisitos

- AWS CLI e credenciais configuradas
- Terraform instalado
- Par de chaves EC2 já criado

##  Como testar

**1. Clone o repositório e entre na pasta**:
```bash
git clone https://github.com/seu-usuario/aws-alb-ec2.git
cd aws-alb-ec2
```
---

**2. Configure seu terraform.tfvars**:

```bash
key_name = "sua-chave"
```
---

**3. Inicialize e aplique**:

```bash
terraform init
terraform apply
```
---

**4. Acesse no navegador**:
```bash
http://<dns-do-alb>
```

A cada refresh, o hostname muda, indicando o balanceamento.

(Caso queira destruir, use: `terraform destroy`)
