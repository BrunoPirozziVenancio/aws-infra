module "vpc" {
  source             = "../modules/vpc"
  vpc_name           = "${var.project_name}-vpc"
  cidr_block         = "10.0.0.0/16"
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones = ["${var.aws_region}a", "${var.aws_region}b"]
  environment        = var.environment
}
module "ec2" {
  source        = "../modules/ec2"
  instance_name = "${var.project_name}-server"
  instance_type = var.instance_type
  ami_id        = var.ami_id
  subnet_id     = module.vpc.public_subnet_ids[0]
  vpc_id        = module.vpc.vpc_id
  key_name      = var.key_name
  environment   = var.environment
}
module "s3" {
  source      = "../modules/s3"
  bucket_name = var.bucket_name
  versioning  = true
  environment = var.environment
}
