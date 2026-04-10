module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type = "t3.micro"
  key_name      = "terra-key"
  monitoring    = true
  subnet_id     = "subnet-0b271e0b7569b2856"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
