# Security group liberando HTTP e SSH

resource "aws_security_group" "alb_sg" {
  name = "alb_sg"
  description = "Libera HTTP e SSH"

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

# Duas instâncias EC2

resource "aws_instance" "web" {
  count = 2
  ami = "ami-0c55b159cbfafe1f0" # Amazon Linux 2
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.alb_sg.id]
  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "WebServer-${count.index + 1}"
  }
}

# Load Balancer

resource "aws_lb" "alb" {
  name = "terraform-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.alb_sg.id]
  subnets = data.aws_subnets.available.ids

  tags = {
    Name = "TerraformALB"
  }
}

# Target group

resource "aws_lb_target_group" "tg" {
  name = "alb-target-group"
  port = 80
  protocol = "HTTP"
  vpc_id = data.aws_vpc.default.id

  health_check {
    path = "/"
    interval = 30
    timeout = 5
    healthy_threshold = 2
    unhealthy_threshold = 2
  }
}

# Listener

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.alb.arn
  port = 80
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}

# Registra as instâncias no target group

resource "aws_lb_target_group_attachment" "attach" {
  count  = 2
  target_group_arn = aws_lb_target_group.tg.arn
  target_id = aws_instance.web[count.index].id
  port = 80
}

# Dados da VPC e Subnets

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "available" {
  filter {
    name = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

