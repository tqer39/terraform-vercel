resource "vercel_project" "this" {
  name                       = var.project_name
  framework                  = var.framework
  public_source              = var.public_source
  serverless_function_region = var.serverless_function_region
  root_directory             = var.root_directory != "" ? var.team_id : null
  team_id                    = var.team_id != "" ? var.team_id : null
  git_repository = {
    type              = var.git_hosting_service_name
    repo              = var.repository
    production_branch = var.production_branch
  }
}
