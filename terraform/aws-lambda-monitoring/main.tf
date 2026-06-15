        # Zipa o código da função Lambda
  
data "archive_file" "lambda_zip" {
  type = "zip"
  source_dir = "${path.module}/lambda"
  output_path = "${path.module}/lambda.zip"
}

        # Cria a função Lambda

resource "aws_lambda_function" "funcao" {
  function_name = "lambda_terraform"
  runtime = "python3.9"
  handler = "handler.lambda_handler"
  role = aws_iam_role.lambda_exec.arn
  filename = data.archive_file.lambda_zip.output_path
  timeout = 10
}

    # Política de execução da Lambda

resource "aws_iam_role" "lambda_exec" {
  name = "lambda_exec_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

        # Anexa permissões básicas de log

resource "aws_iam_role_policy_attachment" "lambda_logs" {
  role = aws_iam_role.lambda_exec.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

    # Evento de agendamento: a cada 5 minutos
  
resource "aws_cloudwatch_event_rule" "agendamento" {
  name = "lambda_agendada"
  schedule_expression = "rate(5 minutes)"
}

        # Permite o evento chamar a função

resource "aws_cloudwatch_event_target" "target_lambda" {
  rule = aws_cloudwatch_event_rule.agendamento.name
  target_id = "lambda"
  arn = aws_lambda_function.funcao.arn
}

resource "aws_lambda_permission" "perm_eventbridge" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action = "lambda:InvokeFunction"
  function_name = aws_lambda_function.funcao.function_name
  principal = "events.amazonaws.com"
  source_arn = aws_cloudwatch_event_rule.agendamento.arn
}

      # SNS para envio de e-mail

resource "aws_sns_topic" "alerta_lambda" {
  name = "alerta_lambda_topic"
}

resource "aws_sns_topic_subscription" "email_alerta" {
  topic_arn = aws_sns_topic.alerta_lambda.arn
  protocol = "email"
  endpoint = var.email_alerta
}

        # Alarme baseado em falhas da Lambda

resource "aws_cloudwatch_metric_alarm" "erro_lambda" {
  alarm_name = "ErrosLambda"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods = 1
  metric_name = "Errors"
  namespace = "AWS/Lambda"
  period = 300
  statistic = "Sum"
  threshold = 0
  alarm_description = "Alerta se a Lambda falhar"
  alarm_actions = [aws_sns_topic.alerta_lambda.arn]
  dimensions = {
    FunctionName = aws_lambda_function.funcao.function_name
  }
}

