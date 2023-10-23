terraform {
    default_tags {
        tags = {
            Environment = var.environment
        }
    }
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.0"
        }
    }
    required_version = "1.6.2"
}


provider "aws" {
    region = var.region
    access_key = var.aws_access_key_id
    secret_key = var.aws_secret_access_key
}





