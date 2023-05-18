module "blog" {
  source = "../../modules/vercel"

  api_token    = var.vercel_api_token
  project_name = "blog"
  repository   = "tqer39/blog"
}
