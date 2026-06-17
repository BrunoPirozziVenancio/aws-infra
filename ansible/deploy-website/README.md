# Deploy Website - Ansible

Playbook para instalar Nginx e fazer deploy do site na instancia EC2.

## Pre-requisitos

- Ansible instalado na sua maquina
- Acesso SSH a instancia EC2 (chave .pem)
- IP da instancia EC2 (gerado pelo Terraform)

## Como usar

### 1. Editar o inventory.ini com o IP da EC2
Substitua IP_DA_EC2 pelo IP gerado no output do Terraform.

### 2. Rodar o playbook
ansible-playbook -i inventory.ini playbook.yml

### 3. Acessar o site
Abra o navegador e acesse:
http://IP_DA_EC2
