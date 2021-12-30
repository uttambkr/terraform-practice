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
  for_each             = toset([var.one, var.two] if var.env == "DEV")
  name                 = each.value
  image_tag_mutability = "IMMUTABLE"
}
