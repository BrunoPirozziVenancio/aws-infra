# Define o provedor AWS e a região que será usada
# Novamente, isso pode ser mudado dependendo das suas preferências 

    terraform {
      required_providers {
        aws = {
          source = "hashicorp/aws"
          version = "~> 5.0"
        }
      }

      required_version = ">= 1.0.0"
    }

    provider "aws" {
      region = var.aws_region
    }

