variable "one" {
  type = string
}

variable "two" {
  type = string
}

variable "env" {
  type = string
}

variable "colors" {
  type    = list(string)
  default = ["blue", "red"]
}

resource "aws_ecr_repository" "demo-repository" {
  for_each = toset([for blue in var.colors : lower(blue) if var.env == "DEV"])
  name                 = each.value
  image_tag_mutability = "IMMUTABLE"
}
