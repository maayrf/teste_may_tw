resource "aws_ecr_repository" "main" {
  name = "my-ecr-repository"
  tags = {
    Name = "my-ecr-repository"
  }
}