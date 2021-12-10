module "storage_class" {
  source = "git::https://github.com/goldstrike77/terraform-module-kubernetes.git//storage-class?ref=v0.1"
  deploy_spec = var.deploy_spec
  annotations = var.annotations
  labels = var.labels
}