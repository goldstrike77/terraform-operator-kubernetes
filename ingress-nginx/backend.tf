# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "consul" {
    address = "consul.service.dc01.local:8500"
    path    = "tfstate/operator/ingress-nginx/terraform.tfstate"
    scheme  = "https"
  }
}