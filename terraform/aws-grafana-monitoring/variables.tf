variable "aws_region" {
  description = "Regiao AWS"
  type        = string
  default     = "us-east-1"
}
variable "project_name" {
  description = "Nome do projeto"
  type        = string
  default     = "grafana-monitoring"
}
variable "environment" {
  description = "Ambiente"
  type        = string
  default     = "dev"
}
variable "instance_type" {
  description = "Tipo das instancias EC2"
  type        = string
  default     = "t2.micro"
}
variable "ami_id" {
  description = "ID da AMI Amazon Linux 2"
  type        = string
  default     = "ami-0c02fb55956c7d316"
}
variable "key_name" {
  description = "Nome do key pair SSH"
  type        = string
}
