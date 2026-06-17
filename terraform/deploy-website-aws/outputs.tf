output "website_public_ip" {
  description = "IP publico do servidor web"
  value       = module.ec2.public_ip
}
output "website_url" {
  description = "URL do website"
  value       = "http://${module.ec2.public_ip}"
}
output "s3_bucket" {
  description = "Nome do bucket S3"
  value       = module.s3.bucket_id
}
output "vpc_id" {
  description = "ID da VPC criada"
  value       = module.vpc.vpc_id
}
output "instance_id" {
  description = "ID da instancia EC2"
  value       = module.ec2.instance_id
}
