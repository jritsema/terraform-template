terraform {
  required_version = ">= 0.12"

  backend "s3" {
    region  = "us-east-1"
    profile = ""
    bucket  = ""
    key     = ""
  }
}

provider "aws" {
  version = ">= 2.27.0"
  region  = var.region
  profile = var.aws_profile
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "aws_profile" {
  type = string
}

variable "app" {
  type = string
}

variable "environment" {
  type = string
}

variable "tags" {
  type = map(string)
}

locals {
  ns = "${var.app}-${var.environment}"
}
