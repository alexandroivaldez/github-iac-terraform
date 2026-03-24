module "profile_repo" {
  source       = "./modules/repository"
  github_token = var.github_token
  repo_name    = "alexandroivaldez"
  description  = "Profile README repo"
}

module "deployment_observatory_repo" {
  source       = "./modules/repository"
  github_token = var.github_token
  repo_name    = "deployment-observatory"
  description  = "Live CI/CD deployment dashboard. Built using Flask, Docker, ECS Fargate and Terraform"
}

module "k8s_url_shortener_repo" {
  source       = "./modules/repository"
  github_token = var.github_token
  repo_name    = "k8s-url-shortener"
  description  = "A URL shortener deployed with Kubernetes."
}