variable "aws_region" {
  description = "Região onde o bucket será criado"
  type = string
  default = "us-east-1"
}

variable "bucket_name" {
  description = "Nome do bucket S3 (único globalmente)"
  type = string
}
