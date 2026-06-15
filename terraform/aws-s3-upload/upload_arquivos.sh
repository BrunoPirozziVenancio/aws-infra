#!/bin/bash

    # Script simples para enviar arquivos ao bucket S3
    # Uso: ./upload_arquivos.sh caminho/para/arquivo.txt

BUCKET_NAME="NOME_DO_BUCKET_AQUI"    # Substitua NOME_DO_BUCKET_AQUI no script pelo nome gerado no terraform apply ou use o output com terraform output bucket_name.

if [ -z "$1" ]; then
    echo "Uso: $0 caminho/para/arquivo.ext"
    exit 
fi

ARQUIVO="$1"

if [ ! -f "$ARQUIVO" ]; then
    echo "Arquivo '$ARQUIVO' não encontrado!"
    exit 2
fi

aws s3 cp "$ARQUIVO" "s3://$BUCKET_NAME/"

if [ $? -eq 0 ]; then
    echo "Arquivo enviado com sucesso para s3://$BUCKET_NAME/"
else
    echo "Falha ao enviar o arquivo!"
fi



    
