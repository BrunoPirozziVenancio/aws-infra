variable "aws_region" {
  description = "Região AWS"
  type = string
  default = "us-east-1"
}

variable "email_alerta" {
  description = "Email que vai receber os alertas"
  type = string
}
