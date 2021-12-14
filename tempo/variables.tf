variable "deploy_spec" {
  default = {
    namespace = {
      name = "tempo"
      annotations = {}
      labels = {}
    }
    helm = {
      tempo-distributed = {
        repository = "https://grafana.github.io/helm-charts"
        chart = "tempo-distributed"
        version = "0.12.2"
        values = "tempo-distributed.yaml"
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
