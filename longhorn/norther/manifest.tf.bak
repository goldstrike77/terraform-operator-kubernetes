module "manifest" {
  depends_on = [module.namespace]
  source = "git::https://github.com/goldstrike77/terraform-module-kubernetes.git//manifest?ref=v0.1"
  deploy_spec = var.deploy_spec
}