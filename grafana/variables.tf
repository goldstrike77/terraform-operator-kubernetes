variable "deploy_spec" {
  default = {
    namespace = {
      name = "grafana"
      annotations = {}
      labels = {}
    }
    helm = {
      grafana = {
        repository = "https://grafana.github.io/helm-charts"
        chart = "grafana"
        version = "6.17.10"
        values = "grafana.yaml"
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
