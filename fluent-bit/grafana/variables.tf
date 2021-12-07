variable "deploy_spec" {
  default = {
    namespace = {
      name = "fluent-bit"
      annotations = {}
      labels = {}
    }
    helm = {
      fluent-bit = {
        repository = "https://grafana.github.io/helm-charts"
        chart = "fluent-bit"
        version = "2.3.0"
        values = "fluent-bit.yaml"
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
