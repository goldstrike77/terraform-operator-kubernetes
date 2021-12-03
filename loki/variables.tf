variable "deploy_spec" {
  default = {
    namespace = {
      name = "loki"
      annotations = {}
      labels = {}
    }
    helm = {
      loki-distributed = {
        repository = "https://grafana.github.io/helm-charts"
        chart = "loki-distributed"
        version = "0.39.3"
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
