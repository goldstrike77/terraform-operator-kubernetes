module "namespace" {
  source = "git::https://github.com/goldstrike77/terraform-module-kubernetes.git//namespace?ref=v0.1"
  deploy_spec = var.deploy_spec
  annotations = var.annotations
  labels = var.labels
}
