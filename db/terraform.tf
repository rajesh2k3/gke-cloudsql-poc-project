terraform {
  required_version = ">= 1.2.4"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=4.24.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">=4.24.0"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

terraform {
  backend "remote" {
    organization = "gkesqlpoc"
    # Org ID="388293042553"
    workspaces {
      name = "ws9kiam-dev-database"
    }
  }
}

provider "google" {
  project = var.project_id
  region = var.region
}

