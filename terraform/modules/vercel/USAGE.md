<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_vercel"></a> [vercel](#requirement\_vercel) | 0.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vercel"></a> [vercel](#provider\_vercel) | 0.13.1 |

## Resources

| Name | Type |
|------|------|
| [vercel_project.this](https://registry.terraform.io/providers/vercel/vercel/0.13.1/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_token"></a> [api\_token](#input\_api\_token) | (Require) The Vercel API token. This can also be set via the `VERCEL_TOKEN` environment variable. | `string` | n/a | yes |
| <a name="input_framework"></a> [framework](#input\_framework) | (Optional) The framework that is being used for this project. If omitted, no framework is selected. | `string` | `"nextjs"` | no |
| <a name="input_git_hosting_service_name"></a> [git\_hosting\_service\_name](#input\_git\_hosting\_service\_name) | (Optional) The git provider of the repository. Must be either `github`, `gitlab`, or `bitbucket`. | `string` | `"github"` | no |
| <a name="input_production_branch"></a> [production\_branch](#input\_production\_branch) | (Optional) (String) By default, every commit pushed to the main branch will trigger a Production Deployment instead of the usual Preview Deployment. You can switch to a different branch here. | `string` | `"main"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | (Require) The desired name for the project. | `string` | n/a | yes |
| <a name="input_public_source"></a> [public\_source](#input\_public\_source) | (Optional) (Boolean) By default, visitors to the `/_logs` and `/_src` paths of your Production and Preview Deployments must log in with Vercel (requires being a member of your team) to see the Source, Logs and Deployment Status of your project. Setting `public_source` to `true` disables this behaviour, meaning the Source, Logs and Deployment Status can be publicly viewed. | `bool` | `false` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | (Require) The name of the git repository. For example: `vercel/next.js`. | `string` | n/a | yes |
| <a name="input_root_directory"></a> [root\_directory](#input\_root\_directory) | (Optional) (String) The name of a directory or relative path to the source code of your project. If omitted, it will default to the project root. | `string` | `""` | no |
| <a name="input_serverless_function_region"></a> [serverless\_function\_region](#input\_serverless\_function\_region) | (Optional) (String) The region on Vercel's network to which your Serverless Functions are deployed. It should be close to any data source your Serverless Function might depend on. A new Deployment is required for your changes to take effect. Please see [Vercel's documentation](https://vercel.com/docs/concepts/edge-network/regions) for a full list of regions. | `string` | `"hnd1"` | no |
| <a name="input_team_id"></a> [team\_id](#input\_team\_id) | (Optional) (String) The team ID to add the project to. | `string` | `""` | no |
<!-- END_TF_DOCS -->