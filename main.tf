//--------------------------------------------------------------------
// Modules
module "ec2" {
  source  = "app.terraform.io/bleehashiorg/ec2/aws"
  version = "0.0.2"

  aws_region = "us-west-1"
  
  providers = {
    aws = aws
  }
}


module "ec2" {
  source  = "app.terraform.io/bleehashiorg/ec2/aws"
  version = "0.0.2"

  aws_region = "us-west-2"
  
  providers = {
    aws = aws.region_2
  }
}
