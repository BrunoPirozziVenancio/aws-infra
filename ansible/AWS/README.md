# Projetos Ansible - AWS

Este diretório contém uma coleção de projetos Ansible voltados para automações em ambientes EC2 na AWS. Cada projeto tem como objetivo resolver uma necessidade comum de infraestrutura, focando em segurança, provisionamento e automação DevOps.

> Todos os projetos foram testados em instâncias EC2 baseadas em Amazon Linux 2.

---

## Projetos incluídos

### `ansible-aws-apache`
Este projeto realiza a instalação e configuração do servidor web Apache em uma instância EC2.

- Instala pacotes do Apache.
- Inicia e habilita o serviço.
- Cria uma página HTML simples para teste.

[Leia o README específico do projeto](./ansible-aws-apache/README.md)

---

### `ansible-aws-nodejs`
Provisiona uma instância EC2 com Node.js e faz o deploy de uma aplicação exemplo do GitHub.

- Instala Node.js e dependências.
- Clona um repositório público Node.js.
- Inicia a aplicação manualmente.

[Leia o README específico do projeto](./ansible-aws-nodejs/README.md)

---

### `ansible-aws-ufw`
Este projeto configura o firewall UFW (Uncomplicated Firewall) em uma instância EC2.

- Define políticas padrão.
- Libera portas essenciais como SSH e HTTP.
- Ativa o firewall de forma segura.

[Leia o README específico do projeto](./ansible-aws-ufw/README.md)

---

### `ansible-aws-users-hardening`
Faz o hardening de instâncias através da criação de um novo usuário com chave SSH e aplicação de boas práticas.

- Cria um novo usuário com sudo.
- Adiciona a chave pública SSH.
- Remove o acesso root via SSH.

[Leia o README específico do projeto](./ansible-aws-users-hardening/README.md)

---

### `ansible-aws-user-firewall`
Este projeto une os projetos de usuário e firewall (3 + 3.1) em um playbook completo.

- Cria usuário com chave SSH.
- Aplica configurações de segurança SSH.
- Configura o firewall UFW.

[Leia o README específico do projeto](./ansible-aws-user-firewall/README.md)

---

### `ansible-docker-setup`
Instala o Docker e Docker Compose em instâncias EC2.

- Adiciona repositórios oficiais.
- Instala o Docker Engine.
- Habilita e inicia o serviço.
- Instala o Docker Compose.

[Leia o README específico do projeto](./ansible-docker-setup/README.md)

---

## Pré-requisitos

- AWS CLI configurada localmente (`aws configure`)
- Chave PEM da instância disponível.
- Inventário Ansible apontando corretamente para o IP da instância EC2.
- Python e Ansible instalados localmente.

---

## Recomendações

- Use os projetos como ponto de partida e adapte para seu ambiente.
- Sempre teste em uma instância de desenvolvimento antes de aplicar em produção.
- Considere criar roles reutilizáveis para ambientes maiores.


