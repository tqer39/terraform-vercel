terraform {
  required_version = "1.6.3"
  required_providers {
    # MEMO: hashicor/aws を上にすると hashicorp/vercel を参照してしまうため注意
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.1"
    }
    vercel = {
      source  = "vercel/vercel"
      version = "0.15.4"
    }
  }
  backend "s3" {
    bucket  = "terraform-tfstate-tqer39-072693953877-ap-northeast-1"
    encrypt = true
    key     = "terraform-vercel/terraform/src/blog.tfstate"
    region  = "ap-northeast-1"
  }
}
