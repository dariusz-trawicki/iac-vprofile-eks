provider "aws" {
  region = "eu-central-1"
}

resource "aws_ecr_repository" "example" {
  name = "vprofileapp"

  # image_scanning_configuration {
  #   scan_on_push = true
  # }
}

output "ecr_repo_url" {
  value = aws_ecr_repository.example.repository_url
}
