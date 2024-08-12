############################################
#create ECR repos for storing Docker images#
############################################

resource "aws_ecr_repository" "app" {
  name = "recipe-app-api-app" # -app is duplicated, because recipe-app-api require both app and proxy repos
  # proxy to connect to app, why?
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # NOTE: update to true for real deployment
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "proxy" {
  name = "recipe-app-api-proxy" # -app is duplicated, because recipe-app-api require both app and proxy repos
  # proxy to connect to app, why?
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # NOTE: update to true for real deployment
    scan_on_push = false
  }
}