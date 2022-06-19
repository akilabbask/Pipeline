terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.0.0"
    }
  }
}

terraform {
  backend "s3" {
  bucket =  "firstpipelineak"
  key =  "first-pipeline\terraform.tfstate"
  region = var.region
 }
}

provider "aws" {
    region = var.region  
}
resource "aws_s3_bucket" "myweb" {
  bucket = var.bucket_name
  acl    = "public-read"
  
  website {
    index_document = "index.html"
    error_document = "error.html"

    routing_rules = <<EOF
[{
    "Condition": {
        "KeyPrefixEquals": "docs/"
    },
    "Redirect": {
        "ReplaceKeyPrefixWith": "documents/"
    }
}]
EOF
  }
}