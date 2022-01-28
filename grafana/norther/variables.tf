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
        chart = "../../_chart/grafana-6.21.1.tgz"
        version = "6.21.1"
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
