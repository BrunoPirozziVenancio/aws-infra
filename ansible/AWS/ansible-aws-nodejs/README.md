# Configuração de Node.js + Git em EC2 AWS

Este projeto automatiza a configuração de um ambiente para aplicações Node.js em uma instância EC2 na AWS.

## O que este projeto faz

- Instala Node.js usando NVM
- Instala dependências (Git, GCC, Make, Curl)
- Instala PM2 (gerenciador de processo Node)
- Clona um repositório de exemplo
- Roda o app com PM2

## Pré-requisitos

- Python com `boto3` e `botocore`
- Ansible instalado (`pip install ansible`)
- Acesso à AWS configurado
- Instância EC2 criada com:
  - Porta 22 aberta (SSH)
  - Tags:
    - `Ansible=true`
    - `Name=nodejs-server`
  - IP público acessível
  - Chave SSH `.pem` salva

## Como executar

### 1. Exporte suas credenciais ou configure ~/.aws/credentials

```bash
export AWS_ACCESS_KEY_ID=...
export AWS_SECRET_ACCESS_KEY=...
```

### 2. Execute o playbook

```bash
ansible-playbook -i inventory_aws_ec2.yml nodejs-playbook.yml
```

---

Obs.:   

O Node.js é instalado via NVM (isolado por usuário)  
PM2 inicia o app (index.js) no fundo  
O app de exemplo é simples e pode ser substituído pelo seu  
 

