terraform {
  required_version = ">= 0.13"

  backend "s3" {
    region  = "us-east-1"
    profile = ""
    bucket  = ""
    key     = ""
  }
}

provider "aws" {
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
