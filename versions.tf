terraform {
  required_providers {
    zpa = {
      source  = "zscaler/zia"
      version = "2.5.6"
    }
  }
  required_version = ">= 0.13.7, < 2.0.0"
}