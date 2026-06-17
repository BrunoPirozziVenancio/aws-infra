# Modulo: S3

Modulo Terraform reutilizavel para criacao de buckets S3 com boas praticas de seguranca.

## Recursos criados

- Bucket S3
- Versionamento configuravel
- Criptografia AES256 habilitada por padrao
- Bloqueio de acesso publico

## Inputs

- bucket_name: Nome do bucket
- versioning: Habilitar versionamento (default: true)
- environment: Ambiente (dev, staging, prod)

## Outputs

- bucket_id: ID do bucket
- bucket_arn: ARN do bucket
- bucket_domain_name: Domain name do bucket
