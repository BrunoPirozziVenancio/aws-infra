# Projeto Ansible – Configuração de Firewall UFW na AWS

Este projeto automatiza a instalação e configuração do firewall UFW em instâncias EC2, com foco em ambientes seguros.

## Requisitos

- Instância baseada em Ubuntu ou Debian
- Chave SSH válida
- Tags AWS: `Ansible=true` e `Name=secure-server`

## O que ele faz

- Instala o `ufw`
- Configura o firewall da máquina com o ufw para:  
  -> Bloquear todo tráfego de entrada por padrão  

- Libera somente portas específicas, como:  

     SSH (22)  
     HTTP (80)  
     HTTPS (443)  

- Ativa o firewall

Objetivo: proteger os serviços rodando na máquina (como um app Node.js, Apache, banco de dados, etc.) e prevenir ataques externos.

## Execução

```bash
ansible-playbook -i inventory_aws_ec2.yml ufw-playbook.yml

