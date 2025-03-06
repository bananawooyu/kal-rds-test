terraform { 
  cloud { 
    organization = "tf-cn" 

    workspaces { 
      name = "kal-rds-test" 
    } 
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.59.0"
    }
  } 
}

provider "aws" {
  region = var.region
}