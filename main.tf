provider "github" {
  token = var.github_token
}

resource "github_repository" "readme_repo" {
  name        = "alexandroivaldez"
  description = "Profile README repo"
  visibility  = "public"
}