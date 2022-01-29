variable "deploy_spec" {
  default = {
    namespace = {
      name = "promtail"
      annotations = {}
      labels = {}
    }
    helm = {
      promtail = {
        repository = "https://grafana.github.io/helm-charts"
        chart = "../../_chart/promtail-3.11.0.tgz"
        version = "3.11.0"
        values = "promtail.yaml"
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