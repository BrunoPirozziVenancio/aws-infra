# aws-infra

Projetos de infraestrutura na AWS usando Terraform e Ansible.

## Estrutura

### Modulos Terraform
- vpc: modulo reutilizavel para criacao de VPC
- ec2: modulo reutilizavel para criacao de instancias EC2
- s3: modulo reutilizavel para criacao de buckets S3

### Projetos
- deploy-website-aws: tutorial completo de deploy de website na AWS
- aws-autoscaling-alb: Auto Scaling Group com Application Load Balancer
- aws-rds-ec2: instancia EC2 conectada ao RDS MySQL
- aws-alb-ec2: Load Balancer com EC2
- aws-ec2-userdata: instancia EC2 com User Data
- aws-s3-upload: Bucket S3 com script de upload
- aws-lambda-monitoring: Lambda para monitoramento

### Ansible
- Playbooks para provisionamento e configuracao de instancias AWS
- Tutorial de deploy de website com Nginx

## Tecnologias

![Terraform](https://img.shields.io/badge/Terraform-623CE4?style=for-the-badge&logo=terraform&logoColor=white)
![Ansible](https://img.shields.io/badge/Ansible-EE0000?style=for-the-badge&logo=ansible&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
