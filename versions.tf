terraform {
  required_version = "1.15.8"

  cloud {
    organization = "code_god"

    workspaces {
      name = "TerraformPlayground"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.60"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}