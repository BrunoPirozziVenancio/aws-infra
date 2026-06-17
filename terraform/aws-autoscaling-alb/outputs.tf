output "alb_dns_name" {
  description = "DNS do Load Balancer"
  value       = aws_lb.main.dns_name
}
output "alb_url" {
  description = "URL do Load Balancer"
  value       = "http://${aws_lb.main.dns_name}"
}
output "asg_name" {
  description = "Nome do Auto Scaling Group"
  value       = aws_autoscaling_group.main.name
}
output "vpc_id" {
  description = "ID da VPC"
  value       = aws_vpc.main.id
}
