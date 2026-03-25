resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.description
  visibility  = var.visibility
}

resource "github_branch_default" "default" {
  repository = github_repository.repo.name
  branch     = var.default_branch
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.repo.node_id
  pattern       = var.default_branch

  required_pull_request_reviews {
    required_approving_review_count = var.required_approving_review_count
  }

  required_status_checks {
    strict   = true
    contexts = ["Terraform"]
  }

  enforce_admins = true
}