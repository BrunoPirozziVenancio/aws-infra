# EC2 + RDS MySQL

Arquitetura completa com servidor web EC2 conectado a banco de dados MySQL no RDS, em subnets separadas por seguranca.

## Arquitetura

- VPC com subnet publica (EC2) e subnets privadas (RDS)
- EC2 com Nginx na subnet publica
- RDS MySQL 8.0 nas subnets privadas
- Security Group do RDS permite acesso apenas da EC2
- Internet Gateway para acesso externo a EC2

## Recursos criados

- VPC + subnets publicas e privadas
- Internet Gateway e Route Table
- EC2 com Nginx instalado via user_data
- RDS MySQL 8.0 em subnet privada
- Security Groups separados para EC2 e RDS

## Como usar

### 1. Criar arquivo terraform.tfvars
key_name    = "nome-do-seu-key-pair"
db_password = "senha-segura-aqui"

### 2. Provisionar
terraform init
terraform plan
terraform apply

### 3. Conectar na EC2
ssh -i ~/.ssh/sua-chave.pem ec2-user@IP_DA_EC2

### 4. Conectar no banco de dentro da EC2
mysql -h RDS_ENDPOINT -u admin -p

## Outputs

- ec2_public_ip: IP publico da EC2
- rds_endpoint: Endpoint do banco RDS
- rds_port: Porta do MySQL (3306)
- vpc_id: ID da VPC

## Destruir

terraform destroy
