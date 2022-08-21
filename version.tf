terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
  }

  required_version = ">= 1.0.0"
}

provider "aws" {
  region = "ap-northeast-1"
}
