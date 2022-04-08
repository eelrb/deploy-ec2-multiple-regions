provider "aws" {
  region = var.aws_region_1 
}

provider "aws" {
   alias  = "region_2"
   region = var.aws_region_2
 }



//--------------------------------------------------------------------
// Modules
module "multi_region_ec2-1" {
  source  = "app.terraform.io/bleehashiorg/multi-region-ec2/aws"
  version = "0.0.6"

  aws_region = var.aws_region_1
  
  providers = {
    aws = aws
  }
}


module "multi_region_ec2-2" {
  source  = "app.terraform.io/bleehashiorg/multi-region-ec2/aws"
  version = "0.0.6"

  aws_region = var.aws_region_2
  
  providers = {
    aws = aws.region_2
  }
}
