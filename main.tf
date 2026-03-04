provider "github" {
  token = var.github_token
}

resource "github_repository" "readme_repo" {
  name        = "alexandroivaldez"
  description = "Profile README repo"
  visibility  = "public"
}

resource "github_branch_default" "default" {
  repository = github_repository.readme_repo.name
  branch     = "main"
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.readme_repo.node_id
  pattern       = "main"
  
  required_pull_request_reviews {
    required_approving_review_count = 0
  }

  required_status_checks {
    strict = true
    contexts = []
  }

  enforce_admins = true
}