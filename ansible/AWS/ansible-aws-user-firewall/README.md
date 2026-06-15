# Segurança de Usuário e Firewall UFW

Este playbook é uma junção dos **Projetos 3 - "ansible-aws-user-da--hardening" (segurança de acesso via SSH)** e **Projeto 3.1 - "ansible-aws-ufw" (configuração de firewall com UFW)**. Ele automatiza as **melhores práticas básicas de segurança** em uma instância EC2 na AWS utilizando o Ansible.

---

## O que este playbook faz

- Cria usuários personalizados com senha criptografada  
- Copia chave SSH pública para autenticação sem senha  
- Desabilita acesso root via SSH  
- Desativa autenticação por senha (só permite chave SSH)  
- Instala e configura UFW para bloquear portas  
- Permite apenas portas essenciais (SSH, HTTP, HTTPS)

---

## Pré-requisitos

- Instância EC2 (Ubuntu ou Debian-based)
- IP público e chave PEM da EC2
- Ansible instalado na máquina local
- Chave pública para autenticação sem senha

##  Como gerar senha criptografada para o usuário

```bash
openssl passwd -6
```
Cole o valor gerado na variável senha no arquivo all.yml

---

## Como executar

```bash
ansible-playbook -i inventory_aws_ec2.yml secure-access-playbook.yml
```

---

Obs.:

Após aplicar o playbook, o login será permitido apenas via chave SSH  
O usuário root não poderá mais acessar via SSH  
Use o novo usuário criado para se conectar à EC2  

---

### Exemplo de conexão após execução

```bash
ssh -i ~/.ssh/minha-chave.pem devops@54.123.45.67
```


