terraform {
  required_version = "1.6.6"
  required_providers {
    # MEMO: hashicor/aws を上にすると hashicorp/vercel を参照してしまうため注意
    aws = {
      source  = "hashicorp/aws"
      version = "5.34.0"
    }
    vercel = {
      source  = "vercel/vercel"
      version = "0.16.0"
    }
  }
  backend "s3" {
    bucket  = "terraform-tfstate-tqer39-072693953877-ap-northeast-1"
    encrypt = true
    key     = "terraform-vercel/terraform/src/blog.tfstate"
    region  = "ap-northeast-1"
  }
}
