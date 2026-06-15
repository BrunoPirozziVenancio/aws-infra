# Criação do bucket

resource "aws_s3_bucket" "meu_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "Bucket de Uploads"
    Criado_por = "Terraform"
  }
}

# Política para permitir upload público via CLI ou script

resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket = aws_s3_bucket.meu_bucket.id

  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false
}

# Permissão simples (opcional, se quiser deixar público (em ambientes de teste é comum deixar público))

resource "aws_s3_bucket_policy" "allow_uploads" {
  bucket = aws_s3_bucket.meu_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid = "AllowUploads",
        Effect = "Allow",
        Principal = "*",
        Action = [
          "s3:PutObject"
        ],
        Resource = "${aws_s3_bucket.meu_bucket.arn}/*"
      }
    ]
  })
}
