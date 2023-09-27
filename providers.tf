terraform {
  cloud {
    organization = "home-lab-1983248"

    workspaces {
      name = "aws-instance-scheduler-terraform"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      "Program" = "Demo"
    }
  }
  access_key = var.key
  secret_key = var.secret
  region     = var.region
  assume_role {
    role_arn = var.assumption_role
  }
}