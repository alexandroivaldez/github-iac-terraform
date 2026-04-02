module "profile_repo" {
  source       = "./modules/repository"
  github_token = var.github_token
  repo_name    = "alexandroivaldez"
  description  = "Profile README repo"
  status_check_contexts = []
}

module "deployment_observatory_repo" {
  source       = "./modules/repository"
  github_token = var.github_token
  repo_name    = "deployment-observatory"
  status_check_contexts = ["Terraform"]
  description  = "Live CI/CD deployment dashboard. Built using Flask, Docker, ECS Fargate and Terraform"
}

module "k8s_url_shortener_repo" {
  source       = "./modules/repository"
  github_token = var.github_token
  repo_name    = "k8s-url-shortener"
  description  = "A URL shortener built with FastAPI and deployed on Kubernetes."
  status_check_contexts = ["Terraform"]
}

module "neo_visualizer_pipeline_repo" {
  source       = "./modules/repository"
  github_token = var.github_token
  repo_name    = "neo-visualizer-pipeline"
  description  = "Serverless ETL pipeline that fetches Near-Earth Object data, transforms and stores it on AWS, and visualizes asteroid trajectories in 3D. Built with Python, Terraform, and Three.js"
  status_check_contexts = []
}

module "plantops_dashboard_repo" {
  source       = "./modules/repository"
  github_token = var.github_token
  repo_name    = "plantops-dashboard"
  description  = "PlantOps Dashboard is an IoT monitoring system that tracks my plants health metrics such as soil moisture, light exposure, and growth over time. Built using Python, Terraform, Ansible and Jenkins."
  status_check_contexts = []
}