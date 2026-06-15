
# Exibe o IP público da instância

    output "instance_public_ip" {
      description = "IP público da EC2"
      value       = aws_instance.web_server.public_ip
    }
