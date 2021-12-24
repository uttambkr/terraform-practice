resource "aws_ecr_repository" "demo-repository" {
  name                 = var.name
  image_tag_mutability = "IMMUTABLE"
}
