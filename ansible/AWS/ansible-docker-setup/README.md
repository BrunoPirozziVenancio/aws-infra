# Instalação do Docker com Ansible (AWS EC2)

Este projeto configura automaticamente uma instância EC2 (Ubuntu) para uso com Docker e Docker Compose usando Ansible.

---

## Funcionalidades

- Instala dependências essenciais
- Adiciona repositório oficial do Docker
- Instala Docker Engine atualizado
- Instala o Docker Compose manualmente
- Adiciona o usuário ao grupo `docker`
- Inicia e habilita o serviço Docker

---

## Pré-requisitos

- Instância EC2 com Ubuntu (com acesso SSH liberado)
- Acesso com chave `.pem` configurada
- Ansible instalado localmente (`sudo apt install ansible`)

---

##  Execução

```bash
ansible-playbook -i inventory_aws_ec2.yml docker-setup-playbook.yml
```
---

Obs.:  
O docker-compose é instalado diretamente do repositório oficial do GitHub.  
Este projeto serve como base para projetos futuros que vão usar containers.

