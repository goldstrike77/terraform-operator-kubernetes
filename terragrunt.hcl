generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  required_version = ">= 0.13.5"
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = ">= 2.6.0"
    }
    helm = {
      source = "hashicorp/helm"
      version = ">= 2.4.1"
    }
  }
}
EOF
}

remote_state {
  backend = "consul"
  config = {
    address = "consul.service.dc01.local:8500"
    scheme = "https"
    path = "tfstate/operator/${path_relative_to_include()}/terraform.tfstate"
  }
  generate = {
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}
