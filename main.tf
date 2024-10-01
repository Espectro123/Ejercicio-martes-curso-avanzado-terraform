resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Name = var.bucket_name
  }
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.environment == "dev" ? ["us-east-2a"]: ["us-east-2a", "us-east-2b", "us-east-2c"]
  private_subnets = [ var.private_subnets ]
  public_subnets  = var.public_subnets

  tags = {
    Environment = var.environment
  }
}

resource "aws_instance" "instance-ejercicio-martes" {
  ami           = "ami-00eb69d236edcfaf8"
  instance_type = "t3.micro"

  tags = {
    Name = "Ejercicio-martes"
  }
}



