variable "deploy_spec" {
  default = {
    namespace = {
      name = "logging"
      annotations = {}
      labels = {}
    }
    helm = {
      loki-distributed = {
        repository = "https://grafana.github.io/helm-charts"
        chart = "loki-distributed"
        version = "0.40.0"
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
