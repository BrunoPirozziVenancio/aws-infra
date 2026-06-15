# Projeto Ansible – Apache em EC2 AWS

Este projeto usa **Ansible** para configurar automaticamente uma instância EC2 na AWS, instalando o Apache e exibindo uma página HTML personalizada.

## Pré-requisitos

- Python com `boto3` instalado
- Ansible instalado (`pip install ansible`)
- Chave `.pem` da instância EC2
- Acesso à AWS com permissão para listar instâncias

## Estrutura

- **inventory_aws_ec2.yml**: inventário dinâmico baseado em tags da AWS
- **apache-playbook.yml**: playbook principal
- **roles/apache**: role que instala e configura Apache

## Como executar

1. Configure suas credenciais AWS:
   
```bash
   export AWS_ACCESS_KEY_ID=...
   export AWS_SECRET_ACCESS_KEY=...
```

2. Execute o playbook:

```bash
   ansible-playbook -i inventory_aws_ec2.yml apache-playbook.yml
```
---
Obs: A instância EC2 deve estar rodando e com a tag Ansible=true e Name=webserver.
