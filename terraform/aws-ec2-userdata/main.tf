# Cria uma chave de segurança que libera a porta 80 e 22

    resource "aws_security_group" "web_sg" {
      name = "web_sg"
      description = "Permite acesso HTTP e SSH"

      ingress {
        description = "HTTP"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

      ingress {
        description = "SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

      egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
      }
    }

    # Cria uma instância EC2 com o script de inicialização

    resource "aws_instance" "web_server" {
      ami                    = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 - us-east-1
      instance_type          = var.instance_type
      key_name               = var.key_name
      vpc_security_group_ids = [aws_security_group.web_sg.id]
      user_data              = file("${path.module}/user_data.sh")

  tags = {
    Name = "WebServer-Terraform"
  }
}

