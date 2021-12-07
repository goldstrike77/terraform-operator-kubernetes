module "helm" {
  source = "git::https://github.com/goldstrike77/terraform-module-kubernetes.git//helm?ref=v0.1"
  deploy_spec = var.deploy_spec
}