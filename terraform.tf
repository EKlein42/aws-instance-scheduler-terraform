variable "region" {
  type        = string
  description = "Deployment region"
  default     = "us-east-1"
}
provider "aws" {
  region = var.region
}