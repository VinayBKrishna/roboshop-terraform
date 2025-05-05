provider "aws" {
  region = "us-east-1" # change if needed
}
provider "vault" {
  address = "http://44.203.215.181:8200/"
  token = var.vault_token
}