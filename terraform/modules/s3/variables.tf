variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}
variable "versioning" {
  description = "Habilitar versionamento do bucket"
  type        = bool
  default     = true
}
variable "environment" {
  description = "Ambiente (dev, staging, prod)"
  type        = string
  default     = "dev"
}
