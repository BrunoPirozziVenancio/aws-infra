module "vpc" {
  source             = "../../modules/vpc"
  vpc_name           = "exemplo-vpc"
  cidr_block         = "10.0.0.0/16"
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
  environment        = "dev"
}
module "ec2" {
  source        = "../../modules/ec2"
  instance_name = "exemplo-instancia"
  instance_type = "t2.micro"
  subnet_id     = module.vpc.public_subnet_ids[0]
  vpc_id        = module.vpc.vpc_id
  environment   = "dev"
}
module "s3" {
  source      = "../../modules/s3"
  bucket_name = "exemplo-bucket-unico-123"
  versioning  = true
  environment = "dev"
}
