terraform {
  required_version = ">= 1.0.8"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.79.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.1.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.7.2"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.1.0"
    }
  }

  # backend "azurerm" {}
}
