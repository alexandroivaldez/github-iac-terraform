provider "github" {
  token = var.github_token
}

resource "github_repository" "managed_repo" {
  name        = "terraform-managed-demo"
  description = "This repository is managed by Terraform"
  visibility  = "public"
}