# Projeto: Lambda agendada com monitoramento e alerta

Esse projeto cria uma função **Lambda Python** que roda a cada 5 minutos. Ela é monitorada pelo **CloudWatch**, e envia alertas por e-mail com **SNS** se der erro.

## Recursos criados

- Lambda com role de execução
- Agendamento via EventBridge (rate 5 minutes)
- Logs via CloudWatch
- Alarme para falha com notificação via email (SNS)

## Pré-requisitos

- Terraform
- Conta AWS
- Email válido para receber alertas
- AWS CLI configurado

## Como usar

1. Clone e entre no projeto:
```bash
git clone https://github.com/BrunoPirozziVenancio/aws-lambda-monitoring.git
cd aws-lambda-monitoring
```

2. Crie o terraform.tfvars:
```bash
email_alerta = "seu@email.com"
```

3. Rode o Terraform:
```bash
terraform init
terraform apply
```

Importante: Confirme o email na sua caixa de entrada para ativar o SNS.  
    
4. Acesse os logs:

Vá até CloudWatch → Logs → lambda_terraform

---

(Caso queira destruir o projeto, use `terraform destroy`)


