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
        chart = "promtail"
        version = "3.10.0"
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