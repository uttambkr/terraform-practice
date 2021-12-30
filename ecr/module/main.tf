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
  for_each             = var.env == "DEV" ? var.one:0
  name                 = each.value
  image_tag_mutability = "IMMUTABLE"
}
