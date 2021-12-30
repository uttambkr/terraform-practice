terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

variable "name" {
  type = string
}

variable "one" {
  type = string
  default = "one"
}

variable "two" {
  type = string
  default = "two"
}

variable "env" {
  type = string
  default = "DEV"
}

module "servers" {
  source = "./module"
  name   = "demo-repo1"
  one = var.one
  two = var.two
  env = var.env
}
