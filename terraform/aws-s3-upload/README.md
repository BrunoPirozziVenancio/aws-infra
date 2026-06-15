# Projeto: Bucket S3 + Script Bash de Upload
Este projeto cria um bucket S3 na AWS e fornece um script em Bash para fazer upload de arquivos via terminal.

## O que é criado

- Bucket S3 com nome personalizado
- Política que permite upload (pode ajustar depois)
- Script Bash para envio automático

## Pré-requisitos

- AWS CLI configurado
- Terraform instalado

##    Como usar

1. Clone o projeto e entre na pasta:
```bash
git clone https://github.com/seu-usuario/aws-s3-upload.git
cd aws-s3-upload
```

2. Crie um arquivo terraform.tfva

```bash
bucket_name = "nome-unico-global-exemplo123"
```
3. Inicialize e aplique:

```bash
terraform init
terraform apply
```

4. Edite o script upload_arquivos.sh e coloque o nome do bucket criado:

```bash
BUCKET_NAME="nome-unico-global-exemplo123"
```

5. Torne o script executável:

`chmod +x upload_arquivos.sh`

6. Envie um arquivo:

`./upload_arquivos.sh teste.txt`

---

(Caso queira destruir o projetom, use `terraform destroy`)
