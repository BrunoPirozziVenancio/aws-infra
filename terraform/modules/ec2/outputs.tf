output "instance_id" {
  description = "ID da instancia EC2"
  value       = aws_instance.main.id
}

output "public_ip" {
  description = "IP publico da instancia"
  value       = aws_instance.main.public_ip
}

output "private_ip" {
  description = "IP privado da instancia"
  value       = aws_instance.main.private_ip
}

output "security_group_id" {
  description = "ID do Security Group"
  value       = aws_security_group.main.id
}
