terraform {
  required_version = "1.4.6"
  required_providers {
    # MEMO: hashicor/aws を上にすると hashicorp/vercel を参照してしまうため注意
    aws = {
      source  = "hashicorp/aws"
      version = "5.13.1"
    }
    vercel = {
      source  = "vercel/vercel"
      version = "0.13.0"
    }
  }
  backend "s3" {
    bucket  = "terraform-tfstate-tqer39-072693953877-ap-northeast-1"
    encrypt = true
    key     = "terraform-vercel/terraform/src/blog.tfstate"
    region  = "ap-northeast-1"
  }
}
