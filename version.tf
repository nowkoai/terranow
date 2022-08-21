# プロバイダー設定/バージョン指定
terraform {
  required_providers {
    aws = {
      # ~> hashicorp/aws 3系の.28以降の最新版を利用する
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
  }

  # >= Terraform 1.0.0以上を利用する
  required_version = ">= 1.0.0"
}

# AWSリージョン指定
provider "aws" {
  region = var.region
}
