# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "consul" {
    address = "consul.service.dc01.local:8500"
    path    = "tfstate/operator/fluent-bit/terraform.tfstate"
    scheme  = "https"
  }
}