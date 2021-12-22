variable "deploy_spec" {
  default = {
    namespace = {
      name = "metrics-server"
      annotations = {}
      labels = {}
    }
    helm = {
      metrics-server = {
        repository = "https://kubernetes-sigs.github.io/metrics-server"
        chart = "metrics-server"
        version = "3.7.0"
        values = "metrics-server.yaml"
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