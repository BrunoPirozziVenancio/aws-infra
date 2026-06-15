#!/bin/bash

    # Instala o Apache e inicia
    
yum update -y
yum install -y httpd
systemctl enable httpd
systemctl start httpd

    # Cria um HTML com o hostname (pra saber qual instância respondeu)
    
echo "<h1>Servidor: $(hostname)</h1>" > /var/www/html/index.html
