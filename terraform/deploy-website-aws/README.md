# Deploy de Website na AWS com Terraform e Ansible

Tutorial completo para subir um website na AWS usando infraestrutura como codigo.

## Arquitetura

- VPC com subnets publicas em 2 AZs
- Instancia EC2 com Nginx servindo o site
- Bucket S3 para armazenamento de arquivos
- Security Group liberando HTTP e SSH

## Pre-requisitos

- Terraform >= 1.0 instalado
- Ansible instalado
- AWS CLI configurado com suas credenciais
- Key Pair criado na AWS

## Passo 1 - Configurar credenciais AWS

aws configure

## Passo 2 - Criar Key Pair na AWS

Acesse o console AWS em EC2 -> Key Pairs -> Create Key Pair.
Salve o arquivo .pem na pasta ~/.ssh/ e ajuste as permissoes:
chmod 400 ~/.ssh/sua-chave.pem

## Passo 3 - Configurar variaveis

Crie um arquivo terraform.tfvars:
key_name    = "nome-do-seu-key-pair"
bucket_name = "meu-website-bucket-unico-123"

## Passo 4 - Provisionar infraestrutura

terraform init
terraform plan
terraform apply

## Passo 5 - Configurar o servidor com Ansible

Edite o arquivo ansible/deploy-website/inventory.ini com o IP do output do Terraform.
ansible-playbook -i ansible/deploy-website/inventory.ini ansible/deploy-website/playbook.yml

## Passo 6 - Acessar o site

http://IP_DA_EC2

## Passo 7 - Destruir a infraestrutura

terraform destroy

## Tecnologias utilizadas

- Terraform: provisionamento da infraestrutura
- Ansible: configuracao do servidor e deploy do site
- AWS EC2: servidor web
- AWS VPC: rede isolada
- AWS S3: armazenamento de arquivos
- Nginx: servidor web
