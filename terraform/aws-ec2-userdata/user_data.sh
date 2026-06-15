#!/bin/bash

    # Atualiza pacotes e instala o Apache
    
yum update -y
yum install -y httpd

    # Ativa o serviço do Apache
    
systemctl start httpd
systemctl enable httpd

    # Cria uma página simples
    
echo "<h1>Servidor EC2 criado via Terraform!</h1>" > /var/www/html/index.html

