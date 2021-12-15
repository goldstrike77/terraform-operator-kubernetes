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
        values = "fluent-bit-grafana.yaml"
      }
/*
      fluent-bit = {
        repository = "https://fluent.github.io/helm-charts"
        chart = "fluent-bit"
        version = "0.19.9"
        values = "fluent-bit-fluent.yaml"
      }
*/
    }
  }
}

variable "annotations" {
  default = {}
}

variable "labels" {
  default = {}
}
