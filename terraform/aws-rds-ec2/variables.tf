variable "aws_region" {
  description = "Regiao AWS"
  type        = string
  default     = "us-east-1"
}
variable "project_name" {
  description = "Nome do projeto"
  type        = string
  default     = "webapp-rds"
}
variable "environment" {
  description = "Ambiente"
  type        = string
  default     = "dev"
}
variable "instance_type" {
  description = "Tipo da instancia EC2"
  type        = string
  default     = "t2.micro"
}
variable "ami_id" {
  description = "ID da AMI"
  type        = string
  default     = "ami-0c02fb55956c7d316"
}
variable "key_name" {
  description = "Nome do key pair SSH"
  type        = string
}
variable "db_name" {
  description = "Nome do banco de dados"
  type        = string
  default     = "appdb"
}
variable "db_username" {
  description = "Usuario do banco de dados"
  type        = string
  default     = "admin"
}
variable "db_password" {
  description = "Senha do banco de dados"
  type        = string
  sensitive   = true
}
variable "db_instance_class" {
  description = "Classe da instancia RDS"
  type        = string
  default     = "db.t3.micro"
}
