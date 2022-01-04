# 生成提供者依赖配置。
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  required_version = "~> 0.14.11"
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

# 仍然必须指定每个工作目录中使用的状态文件后端，但不需要将配置一次又一次地复制和粘贴到每个工作目录，Terragrunt会在运行时根据模板和目录结构正确识别。
remote_state {
  backend = "consul"
  config = {
    address = "consul.service.dc01.local:8500"
    scheme = "https"
    path = "tfstate/operator/${path_relative_to_include()}/terraform.tfstate"
  }
}

# 生成工作目录模块配置集。
generate "main" {
  path = "main.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "consul" {}
}
provider kubernetes {
  config_path = "~/.kube/config"
  config_context = "kubernetes-admin@${basename(get_terragrunt_dir())}"
}
provider helm {
  kubernetes {
    config_path = "~/.kube/config"
    config_context = "kubernetes-admin@${basename(get_terragrunt_dir())}"
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