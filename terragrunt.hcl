# Generate an provider block.
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  required_version = "~> 0.13.5"
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.7.1"
    }
    helm = {
      source = "hashicorp/helm"
      version = "~> 2.4.1"
    }
  }
}
EOF
}

# Configure Terragrunt to automatically store tfstate files in an Consul Key/Value.
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

# Generate module configuration.
generate "main" {
  path = "main.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider kubernetes {
  config_path = "~/.kube/config"
  config_context = "kubernetes-admin-${basename(get_terragrunt_dir())}"
}
provider helm {
  kubernetes {
    config_path = "~/.kube/config"
    config_context = "kubernetes-admin-${basename(get_terragrunt_dir())}"
  }
}
module "namespace" {
  source = "git::https://github.com/goldstrike77/terraform-module-kubernetes.git//namespace?ref=v0.1"
  deploy_spec = var.deploy_spec
  annotations = var.annotations
  labels = var.labels
}
module "helm" {
  depends_on = [module.namespace]
  source = "git::https://github.com/goldstrike77/terraform-module-kubernetes.git//helm?ref=v0.1"
  deploy_spec = var.deploy_spec
}
EOF
}