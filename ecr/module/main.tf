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
  for_each = {
    for key, value in var.one : var.env if var.env != "PROD"
  }
  name                 = each.value
  image_tag_mutability = "IMMUTABLE"
}
