variable "deploy_spec" {
  default = {
    namespace = {
      name = "logging"
      annotations = {}
      labels = {}
    }
    helm = {
      loki = {
        repository = "https://grafana.github.io/helm-charts"
        chart = "../../_chart/loki-distributed-0.42.0.tgz"
        version = "0.42.0"
        values = "loki-distributed.yaml"
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