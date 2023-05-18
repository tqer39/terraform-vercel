variable "api_token" {
  type        = string
  description = "(Require) The Vercel API token. This can also be set via the `VERCEL_TOKEN` environment variable."
  sensitive   = true
}

variable "project_name" {
  type        = string
  description = "(Require) The desired name for the project."
}

variable "framework" {
  type        = string
  description = "(Optional) The framework that is being used for this project. If omitted, no framework is selected."
  default     = "nextjs"
}

variable "public_source" {
  type        = bool
  description = "(Optional) (Boolean) By default, visitors to the `/_logs` and `/_src` paths of your Production and Preview Deployments must log in with Vercel (requires being a member of your team) to see the Source, Logs and Deployment Status of your project. Setting `public_source` to `true` disables this behaviour, meaning the Source, Logs and Deployment Status can be publicly viewed."
  default     = false
}

variable "root_directory" {
  type        = string
  description = "(Optional) (String) The name of a directory or relative path to the source code of your project. If omitted, it will default to the project root."
  default     = ""
}

variable "serverless_function_region" {
  type        = string
  description = "(Optional) (String) The region on Vercel's network to which your Serverless Functions are deployed. It should be close to any data source your Serverless Function might depend on. A new Deployment is required for your changes to take effect. Please see [Vercel's documentation](https://vercel.com/docs/concepts/edge-network/regions) for a full list of regions."
  default     = "hnd1"
}

variable "team_id" {
  type        = string
  description = "(Optional) (String) The team ID to add the project to."
  default     = ""
}

variable "git_hosting_service_name" {
  type        = string
  description = "(Optional) The git provider of the repository. Must be either `github`, `gitlab`, or `bitbucket`."
  default     = "github"
}

variable "repository" {
  type        = string
  description = "(Require) The name of the git repository. For example: `vercel/next.js`."
}

variable "production_branch" {
  type        = string
  description = "(Optional) (String) By default, every commit pushed to the main branch will trigger a Production Deployment instead of the usual Preview Deployment. You can switch to a different branch here."
  default     = "main"
}
