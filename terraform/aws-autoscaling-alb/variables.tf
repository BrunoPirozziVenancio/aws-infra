variable "aws_region" {
  description = "Regiao AWS"
  type        = string
  default     = "us-east-1"
}
variable "project_name" {
  description = "Nome do projeto"
  type        = string
  default     = "webapp-asg"
}
variable "environment" {
  description = "Ambiente"
  type        = string
  default     = "dev"
}
variable "instance_type" {
  description = "Tipo da instancia"
  type        = string
  default     = "t2.micro"
}
variable "ami_id" {
  description = "ID da AMI"
  type        = string
  default     = "ami-0c02fb55956c7d316"
}
variable "min_size" {
  description = "Numero minimo de instancias"
  type        = number
  default     = 1
}
variable "max_size" {
  description = "Numero maximo de instancias"
  type        = number
  default     = 4
}
variable "desired_capacity" {
  description = "Numero desejado de instancias"
  type        = number
  default     = 2
}
