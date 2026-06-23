# Monitoramento de Infraestrutura com Grafana na AWS

Projeto completo de observabilidade monitorando 5 servidores na AWS com Prometheus, Node Exporter e Grafana.

## Arquitetura

- 1 servidor de banco de dados (MySQL)
- 1 servidor proxy (Nginx reverse proxy)
- 3 servidores backend (aplicacao Node.js)
- 1 servidor de monitoramento (Prometheus + Grafana)

## Metricas monitoradas

- Disponibilidade de cada servidor (up/down)
- CPU: percentual de uso e load average (1m, 5m, 15m)
- RAM: percentual de uso, total, usada e disponivel
- Disco: percentual de uso, leitura/escrita em bytes/s e IOPS
- Rede: trafego de entrada e saida em bytes/s
- Sistema: uptime, processos rodando e conexoes abertas

## Dashboard Grafana

O dashboard e provisionado automaticamente com 13 paineis cobrindo todas as metricas acima, organizados por categoria.

## Pre-requisitos

- Terraform >= 1.0 instalado
- Ansible instalado
- AWS CLI configurado
- Key Pair criado na AWS

## Passo 1 - Provisionar a infraestrutura

terraform init
terraform plan
terraform apply

## Passo 2 - Preencher o inventory do Ansible

Copie os IPs gerados nos outputs do Terraform e preencha o arquivo ansible/inventory.ini.

## Passo 3 - Instalar Node Exporter, Prometheus e Grafana

ansible-playbook -i ansible/inventory.ini ansible/playbook.yml

## Passo 4 - Acessar o Grafana

Abra no navegador:
http://IP_DO_SERVIDOR_MONITORAMENTO:3000

Login padrao:
- Usuario: admin
- Senha: admin

## Passo 5 - Destruir

terraform destroy

## Tecnologias

- Terraform: provisionamento das instancias EC2
- Ansible: instalacao e configuracao do Node Exporter, Prometheus e Grafana
- Prometheus: coleta de metricas
- Node Exporter: exporta metricas do sistema operacional
- Grafana: visualizacao dos dashboards
