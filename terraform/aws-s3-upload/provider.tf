terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"  # Fonte oficial do provedor AWS
      version = "~> 5.0"         # Versão recomendada
    }
  }

  required_version = ">= 1.0.0"
}

provider "aws" {
  region = var.aws_region
}
