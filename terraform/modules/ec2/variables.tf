variable "instance_name" {
  description = "Nome da instancia EC2"
  type        = string
}

variable "ami_id" {
  description = "ID da AMI"
  type        = string
  default     = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  description = "Tipo da instancia"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "ID da subnet"
  type        = string
}

variable "vpc_id" {
  description = "ID da VPC"
  type        = string
}

variable "key_name" {
  description = "Nome do key pair SSH"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Ambiente (dev, staging, prod)"
  type        = string
  default     = "dev"
}
