variable "deploy_spec" {
  default = {
    namespace = {
      name = "visualization"
      annotations = {}
      labels = {}
    }
    helm = {
      grafana = {
        repository = "https://grafana.github.io/helm-charts"
        chart = "grafana"
        version = "6.20.1"
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
