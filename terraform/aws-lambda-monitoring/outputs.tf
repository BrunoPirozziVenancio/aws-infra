output "lambda_name" {
  description = "Nome da função Lambda"
  value = aws_lambda_function.funcao.function_name
}

output "sns_topic" {
  description = "Tópico SNS de alerta"
  value = aws_sns_topic.alerta_lambda.arn
}

