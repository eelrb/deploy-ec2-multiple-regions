//--------------------------------------------------------------------
// Modules
module "ec2-1" {
  source  = "app.terraform.io/bleehashiorg/ec2/aws"
  version = "0.0.3"

  aws_region = var.aws_region_1
  
  providers = {
    aws = aws
  }
}


module "ec2-2" {
  source  = "app.terraform.io/bleehashiorg/ec2/aws"
  version = "0.0.3"

  aws_region = var.aws_region_2
  
  providers = {
    aws = aws.region_2
  }
}
