terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

variable "name" {
  type = string
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

module "servers" {
  source = "./module"
  name   = "demo-repo1"
}

module "servers2" {
  source = "./module"
  name   = "demo-repo2"
}
