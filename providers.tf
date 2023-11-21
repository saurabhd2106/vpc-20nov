terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }


  backend "s3" {

    bucket = "mys3bucketforterraformstatefile"
    key = "statefile/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "state-lock"
    
  }
}

provider "aws" {
  # Configuration options

  region = "us-east-2"

}