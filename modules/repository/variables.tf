variable "github_token" {}
variable "repo_name" {}
variable "description" {}
variable "visibility" { default = "public" }
variable "default_branch" { default = "main" }
variable "required_approving_review_count" { default = 0 }
variable "status_check_contexts" {
    type = list(string)
    default = []
}