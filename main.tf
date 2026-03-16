module "profile_repo" {
  source       = "./modules/repository"
  github_token = var.github_token
  repo_name    = "alexandroivaldez"
  description  = "Profile README repo"
}

module "profile_repo" {
  source       = "./modules/repository"
  github_token = var.github_token
  repo_name    = "deployment-observatory"
  description  = "Live CI/CD deployment dashboard. Built using Flask, Docker, ECS Fargate and Terraform"
}