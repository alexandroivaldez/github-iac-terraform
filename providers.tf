provider "github" {
  token = var.github_token
}

terraform {
  
  cloud {
    organization = "alexandrovaldez-personal-infra"

    workspaces {
      name = "github-iac-terraform"
    }
  }
  
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}