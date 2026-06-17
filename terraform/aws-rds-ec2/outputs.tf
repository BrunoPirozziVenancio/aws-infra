output "ec2_public_ip" {
  description = "IP publico da instancia EC2"
  value       = aws_instance.main.public_ip
}
output "rds_endpoint" {
  description = "Endpoint do banco de dados RDS"
  value       = aws_db_instance.main.endpoint
}
output "rds_port" {
  description = "Porta do banco de dados"
  value       = aws_db_instance.main.port
}
output "vpc_id" {
  description = "ID da VPC"
  value       = aws_vpc.main.id
}
