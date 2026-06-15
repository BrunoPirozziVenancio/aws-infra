# Criação de usuários SSH + Hardening

Este projeto automatiza a criação de usuários e a configuração básica de segurança em uma instância EC2 na AWS usando Ansible.

## O que é feito:

- Cria grupo `devops`
- Cria usuários `admin1` e `admin2` com acesso por chave SSH
- Define as permissões do `.ssh` corretamente
- Desabilita o login como root via SSH
- Reinicia o serviço SSH para aplicar as mudanças

## Como usar

1. Configure suas credenciais AWS (export ou ~/.aws)
2. Certifique-se de que a EC2 tem as tags:
   - `Ansible=true`
   - `Name=hardened-server`
3. Execute:
```bash
ansible-playbook -i inventory_aws_ec2.yml users-playbook.yml

