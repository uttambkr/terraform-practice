variable "name" {
  type = string
}

variable "one" {
  type = string
}

variable "two" {
  type = string
}

variable "env" {
  type = string
}

resource "aws_ecr_repository" "demo-repository" {
  name                 = var.env == "DEV" ? var.one : {}
  image_tag_mutability = "IMMUTABLE"
}
