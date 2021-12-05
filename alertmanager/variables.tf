variable "deploy_spec" {
  default = {
    namespace = {
      name = "alertmanager"
      annotations = {}
      labels = {}
    }
    helm = {
      alertmanager = {
        repository = "https://prometheus-community.github.io/helm-charts"
        chart = "alertmanager"
        version = "0.14.0"
        values = "alertmanager.yaml"
      }
    }
  }
}

variable "annotations" {
  default = {}
}

variable "labels" {
  default = {}
}
