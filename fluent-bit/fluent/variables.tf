variable "deploy_spec" {
  default = {
    namespace = {
      name = "fluent-bit"
      annotations = {}
      labels = {}
    }
    helm = {
      fluent-bit = {
        repository = "https://fluent.github.io/helm-charts"
        chart = "fluent-bit"
        version = "0.19.9"
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