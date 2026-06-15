# Projeto: Instância EC2 com Apache (Terraform)

Este projeto cria uma instância EC2 na AWS usando Terraform, configurando um servidor web Apache com um script automático via **User Data**.

---

## O que é provisionado

- Instância EC2 (Amazon Linux 2)
- Apache instalado e iniciado automaticamente
- Página HTML simples
- Security Group liberando HTTP (80) e SSH (22)

## Pré-requisitos

- Conta AWS
- Chave SSH existente (ou crie uma no EC2 > Key Pairs)
- Terraform instalado

## Como usar

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/aws-ec2-userdata.git
   cd aws-ec2-userdata
    ```
   
2. Inicialize o Terraform:
 ```bash
   terraform init
 ```

3. Defina sua chave no terraform.tfvars (ou passe via linha de comando):
 ```bash
   key_name = "nome-da-sua-chave"
 ```
   
4. Execute o plano e aplique:
```bash
   terraform plan
   terraform apply
  ```
5. Acesse o IP no navegador: http://<IP-da-instancia>

(Caso queira destruir use `terraform destroy`)


